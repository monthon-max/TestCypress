import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

// FRAUD_PERSON  > fraud_level 1 เทาอ่อน  2 เทาเข้ม
// RULE_MAXX IN (1) เงื่อนไข 1 
// FRAUD_AGAIN = '0' คือ รายใหม่ '1' คือคนมี personal_id ซ้ำกัน
// FRAUD_ACCOUNT_APPLY_WARRANT FAAW ON FA.ID = FAAW.ACCOUNT_ID  1=Q 2=R 3=H 4=Z
// is_active = 5 ปลดแล้ว 1 = 
export class QueryPage {

  static Query_Mule_Bank_case_Todeep(number,bankcaseId,bankcode) {
    return `
       SELECT
	        DISTINCT PS.PERSONAL_ID,
	        PS.FIRST_NAME,
	        PS.LAST_NAME
        FROM
	        FRAUD_REF_CODE_MULE MULE
          JOIN CFRAPP.PERSON PS ON
	        PS.PERSONAL_ID = MULE.PERSONAL_ID
	        AND MULE.REF_CODE IS NOT NULL
          JOIN CFRAPP.BANKACCOUNT BA ON
	        PS.BANK_CASE_ID = BA.BANK_CASE_ID
        WHERE
	        BA.BANK_CASE_ID = '${bankcaseId}'
	        AND BA.BANK_CODE = '${bankcode}'
          FETCH FIRST ${number} ROW ONLY
    `;
  }



  static Query_New_Mule(number) {
    return `
      SELECT DISTINCT FA.PERSONAL_ID, FA.ACCOUNT_NUMBER, REF_CODE, STATUS, FA.FIRST_NAME, FA.LAST_NAME, ACCOUNT_TYPE 
      FROM (SELECT PERSONAL_ID, ACCOUNT_NUMBER, BANK_CODE, MAX(RULE_MAXX) AS RULE_MAX 
      FROM (SELECT FA.PERSONAL_ID, FA.ACCOUNT_NUMBER, BANK_CODE, MIN(FAAFR.RULE_ID) AS RULE_MAXX 
      FROM FRAUD_PERSON FP 
      JOIN FRAUD_ACCOUNT FA ON FP.PERSONAL_ID = FA.PERSONAL_ID AND FP.FRAUD_LEVEL = 2 AND ACCOUNT_TYPE = 'ชาวต่างชาติ'
      JOIN FRAUD_ACCOUNT_REPORT FAR ON FAR.ACCOUNT_ID = FA.ID 
      JOIN FRAUD_ACCOUNT_APPLY_FRAUD_RULE FAAFR ON FA.ID = FAAFR.ACCOUNT_ID 
      WHERE FRAUD_AGAIN = '0' 
      GROUP BY ACCOUNT_NUMBER, FA.PERSONAL_ID, BANK_CODE) 
      WHERE RULE_MAXX IN (1) 
      GROUP BY PERSONAL_ID, ACCOUNT_NUMBER, BANK_CODE) data 
      JOIN FRAUD_REF_CODE_MULE MULE ON data.PERSONAL_ID = MULE.PERSONAL_ID 
      JOIN FRAUD_ACCOUNT FA ON data.PERSONAL_ID = FA.PERSONAL_ID 
      WHERE STATUS = 1
      OFFSET ${number} ROWS FETCH NEXT 1 ROWS ONLY
    `;
  }
  static Query_Mule_Check_Brown() {
    return `
      select PERSONAL_ID,FIRST_NAME,LAST_NAME,ACCOUNT_NUMBER,BROWN_MULE_STATUS from BROWN_MULE_REPO where PERSONAL_ID = 's/sboynhViFdy2NBdWSpjpMr+TzVbBPBQuFl0riPkEc=' 
    `;
  }
  static Query_DB_Brow_REPO(encryptedPersonalId) {
    return `
      SELECT PERSONAL_ID, FIRST_NAME, LAST_NAME, ACCOUNT_NUMBER, CONFIRM_DATETIME
      FROM BROWN_MULE_REPO
      WHERE PERSONAL_ID = '${encryptedPersonalId}'
      ORDER BY CONFIRM_DATETIME DESC
    `;
  }


  static Query_Mule_Same_Level2(number) {
    return `
      SELECT DISTINCT FA.PERSONAL_ID, FA.ACCOUNT_NUMBER, REF_CODE, STATUS, FA.FIRST_NAME, FA.LAST_NAME, ACCOUNT_TYPE 
      FROM (SELECT PERSONAL_ID, ACCOUNT_NUMBER, BANK_CODE, MAX(RULE_MAXX) AS RULE_MAX 
      FROM (SELECT FA.PERSONAL_ID, FA.ACCOUNT_NUMBER, BANK_CODE, MIN(FAAFR.RULE_ID) AS RULE_MAXX 
      FROM FRAUD_PERSON FP 
      JOIN FRAUD_ACCOUNT FA ON FP.PERSONAL_ID = FA.PERSONAL_ID AND FP.FRAUD_LEVEL = 2 AND ACCOUNT_TYPE = 'บุคคลธรรมดา'
      JOIN FRAUD_ACCOUNT_REPORT FAR ON FAR.ACCOUNT_ID = FA.ID 
      JOIN FRAUD_ACCOUNT_APPLY_FRAUD_RULE FAAFR ON FA.ID = FAAFR.ACCOUNT_ID 
      WHERE FRAUD_AGAIN = '0' 
      GROUP BY ACCOUNT_NUMBER, FA.PERSONAL_ID, BANK_CODE) 
      WHERE RULE_MAXX IN (1) 
      GROUP BY PERSONAL_ID, ACCOUNT_NUMBER, BANK_CODE) data 
      JOIN FRAUD_REF_CODE_MULE MULE ON data.PERSONAL_ID = MULE.PERSONAL_ID 
      JOIN FRAUD_ACCOUNT FA ON data.PERSONAL_ID = FA.PERSONAL_ID 
      WHERE STATUS = 1
      OFFSET ${number} ROWS FETCH NEXT 1 ROWS ONLY
    `;
  }
  static Query_Mule(number) {
    return `
      SELECT DISTINCT FA.PERSONAL_ID, FA.ACCOUNT_NUMBER, REF_CODE, STATUS, FA.FIRST_NAME, FA.LAST_NAME, ACCOUNT_TYPE 
      FROM (SELECT PERSONAL_ID, ACCOUNT_NUMBER, BANK_CODE, MAX(RULE_MAXX) AS RULE_MAX 
      FROM (SELECT FA.PERSONAL_ID, FA.ACCOUNT_NUMBER, BANK_CODE, MIN(FAAFR.RULE_ID) AS RULE_MAXX 
      FROM FRAUD_PERSON FP 
      JOIN FRAUD_ACCOUNT FA ON FP.PERSONAL_ID = FA.PERSONAL_ID AND FP.FRAUD_LEVEL = 2 AND ACCOUNT_TYPE = 'บุคคลธรรมดา'
      JOIN FRAUD_ACCOUNT_REPORT FAR ON FAR.ACCOUNT_ID = FA.ID 
      JOIN FRAUD_ACCOUNT_APPLY_FRAUD_RULE FAAFR ON FA.ID = FAAFR.ACCOUNT_ID 
      GROUP BY ACCOUNT_NUMBER, FA.PERSONAL_ID, BANK_CODE) 
      GROUP BY PERSONAL_ID, ACCOUNT_NUMBER, BANK_CODE) data 
      JOIN FRAUD_REF_CODE_MULE MULE ON data.PERSONAL_ID = MULE.PERSONAL_ID 
      JOIN FRAUD_ACCOUNT FA ON data.PERSONAL_ID = FA.PERSONAL_ID 
      WHERE STATUS = 1
      OFFSET ${number} ROWS FETCH NEXT 1 ROWS ONLY
    `;
  }
  static Query_Mule_Brown_Mule(number) {
    return `
      SELECT PERSONAL_ID,FIRST_NAME,LAST_NAME FROM BROWN_MULE_REPO bmr
      OFFSET ${number} ROWS FETCH NEXT 1 ROWS ONLY
    `;
  }
  static Query_Withdraw_Black_Mule(number,condi_mule,note) {
    return `
      select CARD_ID,REF_CODE
    from AOC_BLACK_MULE_PERSON PS
         join AOC_BLACK_MULE_ACCOUNT AC on PS.ID = AC.BLACK_MULE_PERSON_ID
         join AOC_BLACK_MULE_CASE CAE on AC.ID = CAE.BLACK_MULE_ACCOUNT_ID
        LEFT JOIN AOC_WITHDRAW_MULE_REPO repo on PS.WITHDRAW_MULE_REPO_ID = repo.ID
        LEFT JOIN FRAUD_PERSON FPS on PS.CARD_ID = FPS.PERSONAL_ID
    where NOTE = '${note}'
    AND STATUS = 'INACTIVE'
    AND DECLARE_REASON = '${condi_mule}'
    and FRAUD_LEVEL is null
    FETCH FIRST ${number} ROW ONLY
    `;
  }
  static Query_Withdraw_Black_Mule_Rule(number,condi_mule,note,rule) {
    return `
      SELECT 
      PS.CARD_ID,
      REF_CODE,
      MAX(FAAFR.RULE_ID) AS RULE_MAX
    FROM AOC_BLACK_MULE_PERSON PS
    JOIN AOC_BLACK_MULE_ACCOUNT AC ON PS.ID = AC.BLACK_MULE_PERSON_ID
    JOIN AOC_BLACK_MULE_CASE CAE ON AC.ID = CAE.BLACK_MULE_ACCOUNT_ID
    LEFT JOIN AOC_WITHDRAW_MULE_REPO repo ON PS.CARD_ID = repo.MULE_IDENTITY_ID
    JOIN FRAUD_PERSON FPS ON PS.CARD_ID = FPS.PERSONAL_ID
    JOIN FRAUD_ACCOUNT FA ON FPS.PERSONAL_ID = FA.PERSONAL_ID
    JOIN FRAUD_ACCOUNT_APPLY_FRAUD_RULE FAAFR ON FA.ID = FAAFR.ACCOUNT_ID
    WHERE FPS.FRAUD_LEVEL = '${note}'
        AND FAAFR.RULE_ID = '${rule}'
        AND DECLARE_REASON = '${condi_mule}'
    GROUP BY PS.CARD_ID, REF_CODE, BLACK_MULE_DATE, PS.UPDATE_DATETIME
    FETCH FIRST ${number} ROW ONLY
    `;
  }
  static Query_Withdraw_Black_Mule_have_Brown_Mule(number,condi_mule,note,rule) {
    return `
      SELECT 
    PS.CARD_ID,
    PS.REF_CODE,
    DECLARE_REASON
    FROM AOC_BLACK_MULE_PERSON PS
    LEFT JOIN AOC_WITHDRAW_MULE_REPO repo ON PS.CARD_ID = repo.MULE_IDENTITY_ID
    JOIN FRAUD_ACCOUNT_WARY_BROWN_MULE_REPORT fwbmrf ON PS.CARD_ID = fwbmrf.PERSONAL_ID 
    JOIN FRAUD_ACCOUNT FA ON fwbmrf.PERSONAL_ID = FA.PERSONAL_ID
    JOIN FRAUD_PERSON fp ON fp.PERSONAL_ID = FA.PERSONAL_ID 
    LEFT JOIN FRAUD_ACCOUNT_REPORT far ON fp.PERSONAL_ID = far.PERSONAL_ID 
    WHERE fp.FRAUD_LEVEL IS NULL 
    AND far.ID IS NULL 
    AND DECLARE_REASON = '${condi_mule}'
    FETCH FIRST ${number} ROW ONLY
    `;
  }
  static Query_Withdraw_Black_Mule_have_Exchange(number,condi_mule,note,rule) {
    return `
      SELECT 
    PS.CARD_ID,
    PS.REF_CODE,
    DECLARE_REASON
    FROM AOC_BLACK_MULE_PERSON PS
    LEFT JOIN AOC_WITHDRAW_MULE_REPO repo ON PS.CARD_ID = repo.MULE_IDENTITY_ID
    JOIN CFRAPP.EXCHANGE_ACCOUNT_REPO ear ON ear.JURISTIC_ID  = PS.CARD_ID
    WHERE DECLARE_REASON = '${condi_mule}'
    FETCH FIRST ${number} ROW ONLY
    `;
  }
  static Query_Not_Mule_But_Sys_CFR(number) {
    return `
      SELECT distinct ps.PERSONAL_ID,ps.FIRST_NAME,ps.LAST_NAME
    FROM CFRAPP.PERSON ps
    WHERE NOT EXISTS (
    SELECT 1
    FROM FRAUD_PERSON  PF
    WHERE ps.PERSONAL_ID = PF.PERSONAL_ID
    )
    and ps.PERSONAL_ID is not null
    and PERSONAL_TYPE not in ('นิติบุคคล')
    FETCH FIRST ${number} ROW ONLY
    `;
  }
  static Query_Not_Mule_But_Sys_CFR_2(number) {
    return `
      SELECT
	    DISTINCT ps.PERSONAL_ID,
	    FIRST_NAME,
	    LAST_NAME
      FROM
	    CFRAPP.PERSON ps
		  JOIN FRAUD_PERSON PF ON
			ps.PERSONAL_ID = PF.PERSONAL_ID
        OFFSET ${number} ROWS FETCH NEXT 1 ROWS ONLY
    `;
  }
  static Query_Mule_NotSame(number) {
    return `
      WITH CTE AS (
      SELECT PERSONAL_ID, FIRST_NAME, LAST_NAME, ROW_NUMBER() OVER (PARTITION BY FIRST_NAME ORDER BY PERSONAL_ID) AS RN
      FROM CFRAPP.PERSON)
      SELECT PERSONAL_ID, FIRST_NAME, LAST_NAME
      FROM CTE
      WHERE RN = 1 AND PERSONAL_ID != 'Q1xQCH6FioWabD3V1Uy+VKcbCfTeMmePfvZTzKeGHrE='
      FETCH FIRST ${number} ROW ONLY
    `;
  }
  static Query_Mule_RuleMax(number,rulemax,mulelevel) {
    return `
      SELECT DISTINCT FA.PERSONAL_ID, FA.ACCOUNT_NUMBER, REF_CODE, STATUS, FA.FIRST_NAME, FA.LAST_NAME, ACCOUNT_TYPE 
      FROM (SELECT PERSONAL_ID, ACCOUNT_NUMBER, BANK_CODE, MAX(RULE_MAXX) AS RULE_MAX 
      FROM (SELECT FA.PERSONAL_ID, FA.ACCOUNT_NUMBER, BANK_CODE, MIN(FAAFR.RULE_ID) AS RULE_MAXX 
      FROM FRAUD_PERSON FP 
      JOIN FRAUD_ACCOUNT FA ON FP.PERSONAL_ID = FA.PERSONAL_ID AND FP.FRAUD_LEVEL = ${mulelevel} AND ACCOUNT_TYPE = 'บุคคลธรรมดา'
      JOIN FRAUD_ACCOUNT_REPORT FAR ON FAR.ACCOUNT_ID = FA.ID 
      JOIN FRAUD_ACCOUNT_APPLY_FRAUD_RULE FAAFR ON FA.ID = FAAFR.ACCOUNT_ID 
      WHERE FRAUD_AGAIN = '0' 
      GROUP BY ACCOUNT_NUMBER, FA.PERSONAL_ID, BANK_CODE) 
      WHERE RULE_MAXX IN (${rulemax}) 
      GROUP BY PERSONAL_ID, ACCOUNT_NUMBER, BANK_CODE) data 
      JOIN FRAUD_REF_CODE_MULE MULE ON data.PERSONAL_ID = MULE.PERSONAL_ID 
      JOIN FRAUD_ACCOUNT FA ON data.PERSONAL_ID = FA.PERSONAL_ID 
      WHERE STATUS = 1
      OFFSET ${number} ROWS FETCH NEXT 1 ROWS ONLY
    `;
  }
  static Query_Mule_TC001_002(number) {
    return `
      SELECT DISTINCT FA.PERSONAL_ID, FA.ACCOUNT_NUMBER, REF_CODE, STATUS, FA.FIRST_NAME, FA.LAST_NAME, ACCOUNT_TYPE, FA.BANK_CODE 
      FROM (SELECT PERSONAL_ID, ACCOUNT_NUMBER, BANK_CODE, MAX(RULE_MAXX) AS RULE_MAX 
      FROM (SELECT FA.PERSONAL_ID, FA.ACCOUNT_NUMBER, BANK_CODE, MIN(FAAFR.RULE_ID) AS RULE_MAXX 
      FROM FRAUD_PERSON FP 
      JOIN FRAUD_ACCOUNT FA ON FP.PERSONAL_ID = FA.PERSONAL_ID AND FP.FRAUD_LEVEL = 2 AND ACCOUNT_TYPE = 'บุคคลธรรมดา'
      JOIN FRAUD_ACCOUNT_REPORT FAR ON FAR.ACCOUNT_ID = FA.ID 
      JOIN FRAUD_ACCOUNT_APPLY_FRAUD_RULE FAAFR ON FA.ID = FAAFR.ACCOUNT_ID 
      WHERE FRAUD_AGAIN = '0' 
      GROUP BY ACCOUNT_NUMBER, FA.PERSONAL_ID, BANK_CODE) 
      WHERE RULE_MAXX IN (1) 
      GROUP BY PERSONAL_ID, ACCOUNT_NUMBER, BANK_CODE) data 
      JOIN FRAUD_REF_CODE_MULE MULE ON data.PERSONAL_ID = MULE.PERSONAL_ID 
      JOIN FRAUD_ACCOUNT FA ON data.PERSONAL_ID = FA.PERSONAL_ID 
      WHERE STATUS = 1 AND FA.BANK_CODE = 004
      OFFSET ${number} ROWS FETCH NEXT 1 ROWS ONLY
    `;
  }
  static Query_Mule_TC004_001(number) {
    return `
      SELECT DISTINCT FA.PERSONAL_ID, FA.ACCOUNT_NUMBER, REF_CODE, STATUS, FA.FIRST_NAME, FA.LAST_NAME, ACCOUNT_TYPE, FAAW.WARRANT_ID
      FROM (SELECT PERSONAL_ID, ACCOUNT_NUMBER, BANK_CODE, MAX(RULE_MAXX) AS RULE_MAX 
      FROM (SELECT FA.PERSONAL_ID, FA.ACCOUNT_NUMBER, BANK_CODE, MIN(FAAFR.RULE_ID) AS RULE_MAXX 
      FROM FRAUD_PERSON FP 
      JOIN FRAUD_ACCOUNT FA ON FP.PERSONAL_ID = FA.PERSONAL_ID AND FP.FRAUD_LEVEL = 2
      JOIN FRAUD_ACCOUNT_REPORT FAR ON FAR.ACCOUNT_ID = FA.ID 
      JOIN FRAUD_ACCOUNT_APPLY_FRAUD_RULE FAAFR ON FA.ID = FAAFR.ACCOUNT_ID 
      WHERE FRAUD_AGAIN = '0' 
      GROUP BY ACCOUNT_NUMBER, FA.PERSONAL_ID, BANK_CODE) 
      WHERE RULE_MAXX IN (1) 
      GROUP BY PERSONAL_ID, ACCOUNT_NUMBER, BANK_CODE) data 
      JOIN FRAUD_REF_CODE_MULE MULE ON data.PERSONAL_ID = MULE.PERSONAL_ID 
      JOIN FRAUD_ACCOUNT FA ON data.PERSONAL_ID = FA.PERSONAL_ID 
      JOIN FRAUD_ACCOUNT_APPLY_WARRANT FAAW ON FA.ID = FAAW.ACCOUNT_ID
      WHERE STATUS = 1 AND FAAW.WARRANT_ID = 2
      OFFSET ${number} ROWS FETCH NEXT 1 ROWS ONLY
    `;
  }
  static Query_Mule_TC004_002(number) {
    return `
      SELECT DISTINCT FA.PERSONAL_ID, FA.ACCOUNT_NUMBER, REF_CODE, STATUS, FA.FIRST_NAME, FA.LAST_NAME, ACCOUNT_TYPE, FAAW.WARRANT_ID
      FROM (SELECT PERSONAL_ID, ACCOUNT_NUMBER, BANK_CODE, MAX(RULE_MAXX) AS RULE_MAX 
      FROM (SELECT FA.PERSONAL_ID, FA.ACCOUNT_NUMBER, BANK_CODE, MIN(FAAFR.RULE_ID) AS RULE_MAXX 
      FROM FRAUD_PERSON FP 
      JOIN FRAUD_ACCOUNT FA ON FP.PERSONAL_ID = FA.PERSONAL_ID AND FP.FRAUD_LEVEL = 2
      JOIN FRAUD_ACCOUNT_REPORT FAR ON FAR.ACCOUNT_ID = FA.ID 
      JOIN FRAUD_ACCOUNT_APPLY_FRAUD_RULE FAAFR ON FA.ID = FAAFR.ACCOUNT_ID 
      WHERE FRAUD_AGAIN = '0' 
      GROUP BY ACCOUNT_NUMBER, FA.PERSONAL_ID, BANK_CODE) 
      WHERE RULE_MAXX IN (2) 
      GROUP BY PERSONAL_ID, ACCOUNT_NUMBER, BANK_CODE) data 
      JOIN FRAUD_REF_CODE_MULE MULE ON data.PERSONAL_ID = MULE.PERSONAL_ID 
      JOIN FRAUD_ACCOUNT FA ON data.PERSONAL_ID = FA.PERSONAL_ID 
      JOIN FRAUD_ACCOUNT_APPLY_WARRANT FAAW ON FA.ID = FAAW.ACCOUNT_ID
      WHERE STATUS = 1 AND FAAW.WARRANT_ID = 3
      OFFSET ${number} ROWS FETCH NEXT 1 ROWS ONLY
    `;
  }
  static Query_Mule_TC004_003(number) {
    return `
      SELECT DISTINCT FA.PERSONAL_ID, FA.ACCOUNT_NUMBER, REF_CODE, STATUS, FA.FIRST_NAME, FA.LAST_NAME, ACCOUNT_TYPE
      FROM (SELECT PERSONAL_ID, ACCOUNT_NUMBER, BANK_CODE, MAX(RULE_MAXX) AS RULE_MAX 
      FROM (SELECT FA.PERSONAL_ID, FA.ACCOUNT_NUMBER, BANK_CODE, MIN(FAAFR.RULE_ID) AS RULE_MAXX 
      FROM FRAUD_PERSON FP 
      JOIN FRAUD_ACCOUNT FA ON FP.PERSONAL_ID = FA.PERSONAL_ID AND FP.FRAUD_LEVEL = 2
      JOIN FRAUD_ACCOUNT_REPORT FAR ON FAR.ACCOUNT_ID = FA.ID 
      JOIN FRAUD_ACCOUNT_APPLY_FRAUD_RULE FAAFR ON FA.ID = FAAFR.ACCOUNT_ID 
      WHERE FRAUD_AGAIN = '0' 
      GROUP BY ACCOUNT_NUMBER, FA.PERSONAL_ID, BANK_CODE) 
      WHERE RULE_MAXX IN (3) 
      GROUP BY PERSONAL_ID, ACCOUNT_NUMBER, BANK_CODE) data 
      JOIN FRAUD_REF_CODE_MULE MULE ON data.PERSONAL_ID = MULE.PERSONAL_ID 
      JOIN FRAUD_ACCOUNT FA ON data.PERSONAL_ID = FA.PERSONAL_ID 
      WHERE STATUS = 1
      OFFSET ${number} ROWS FETCH NEXT 1 ROWS ONLY
    `;
  }
  static Query_ExchangeAccount_Upload_INFO(filename) {
    return `
      SELECT ID FROM EXCHANGE_ACCOUNT_UPLOAD_FILE_INFO eaufi WHERE FILE_NAME = '${filename}.xlsx'
    `;
  }
  static Query_ExchangeAccount_Upload_Detail(id) {
    return `
      SELECT ID FROM EXCHANGE_ACCOUNT_UPLOAD_FILE_DETAIL eaufd WHERE FILE_INFO_ID = '${id}'
    `;
  }
  static Query_ExchangeAccount_Upload_Detail_record_more(id) {
    return `
      SELECT ID FROM EXCHANGE_ACCOUNT_UPLOAD_FILE_DETAIL eaufd WHERE FILE_INFO_ID = '${id}' ORDER BY INDEX_NUMBER DESC
    `;
  }
  static Query_ExchangeAccount_Upload_REPO(id) {
    return `
      SELECT JURISTIC_ID,NAME,ACCOUNT_NUMBER,ACCOUNT_STATUS FROM EXCHANGE_ACCOUNT_REPO eaufd WHERE CREATE_FILE_DETAIL_ID = '${id}'
    `;
  }

  static Query_ExchangeAccount_Upload_REPO_new(id) {
    return `
      SELECT NAME,ACCOUNT_NUMBER FROM EXCHANGE_ACCOUNT_REPO eaufd WHERE CREATE_FILE_DETAIL_ID = '${id}'
    `;
  }
  static Query_ExchangeAccount_Deleted_Upload_INFO(filename) {
    return `
      DELETE FROM EXCHANGE_ACCOUNT_UPLOAD_FILE_INFO eaufi WHERE FILE_NAME = '${filename}.xlsx'
    `;
  }
  static Query_ExchangeAccount_Deleted_Upload_INFO_100_record(filename) {
    return `
      DELETE FROM EXCHANGE_ACCOUNT_UPLOAD_FILE_INFO eaufi WHERE FILE_NAME IN '${filename}.xlsx'
    `;
  }
  
  static Query_ExchangeAccount_Deleted_Upload_Detail(id) {
    return `
      DELETE FROM EXCHANGE_ACCOUNT_UPLOAD_FILE_DETAIL eaufd WHERE FILE_INFO_ID = '${id}'
    `;
  }
  static Query_ExchangeAccount_Deleted_Upload_REPO(id) {
    return `
      DELETE FROM EXCHANGE_ACCOUNT_REPO eaufd WHERE CREATE_FILE_DETAIL_ID = '${id}'
    `;
  }
  static Query_ExchangeAccount_Deleted_Upload_REPO_V1(idrepo) {
    return `
         DELETE FROM EXCHANGE_ACCOUNT_REPO WHERE CREATE_FILE_DETAIL_ID IN (${idrepo.map(id => `'${id}'`).join(", ")})`;
    
  }
  static Query_Prepara_Exchange_Account_For_Active() {
    return `
      SELECT JURISTIC_ID, NAME, ACCOUNT_NUMBER , ACCOUNT_BANK_CODE ,ACCOUNT_STATUS
      FROM EXCHANGE_ACCOUNT_REPO ear 
      WHERE JURISTIC_ID IS NOT NULL 
      AND ACCOUNT_STATUS = 'ACTIVE'
      FETCH FIRST 1 ROW ONLY
    `;
  }
  static Query_Prepara_Exchange_Account_For_Active_Bankcode(bankccode) {
    return `
      SELECT JURISTIC_ID, NAME, ACCOUNT_NUMBER , ACCOUNT_BANK_CODE ,ACCOUNT_STATUS
      FROM EXCHANGE_ACCOUNT_REPO ear 
      WHERE JURISTIC_ID IS NOT NULL 
      AND ACCOUNT_STATUS = 'ACTIVE' AND ACCOUNT_BANK_CODE = '${bankccode}'
      FETCH FIRST 1 ROW ONLY
    `;
  }
  static Query_ExchangeAccount_Deleted_Upload_INFO_(filename) {
    return `
      DELETE FROM EXCHANGE_ACCOUNT_UPLOAD_FILE_INFO eaufi WHERE FILE_NAME = '${filename}.xlsx'
      
    `;
  }
  static Query_ExchangeAccount_Deleted_Upload_Detail_(id) {
    return `
      DELETE FROM EXCHANGE_ACCOUNT_UPLOAD_FILE_DETAIL eaufd WHERE FILE_INFO_ID = '${id}'

    `;
  }
  static Query_ExchangeAccount_Deleted_Upload_REPO_(id) {
    return `
      DELETE FROM EXCHANGE_ACCOUNT_REPO eaufd WHERE CREATE_FILE_DETAIL_ID = '${id}'
    `;

  }

  static Query_Darkbrownmuleregistry_INFO(filename) {
    return `
      SELECT ID FROM BROWN_MULE_UPLOAD_FILE_INFO bmtufd WHERE FILE_NAME = '${filename}.xlsx'
    `;
  }
  static Query_Darkbrownmuleregistry_Upload_Detail(id) {
    return `
      SELECT DETAIL_ID FROM BROWN_MULE_UPLOAD_FILE_DETAIL bmufd WHERE FILE_INFO_ID = '${id}' ORDER BY INDEX_NUMBER ASC
    `;
  }
  static Query_Darkbrownmuleregistry_Upload_REPO(personal) {
    return `
      SELECT PERSONAL_ID,FIRST_NAME,ACCOUNT_NUMBER,LAST_NAME FROM BROWN_MULE_REPO bmr WHERE CREATE_FILE_DETAIL_ID = '${personal}'
    `;
  }
  static Query_Darkbrownmuleregistry_Deleted_Upload_INFO(filename) {
    return `
      DELETE FROM BROWN_MULE_UPLOAD_FILE_INFO bmtufd WHERE FILE_NAME = '${filename}.xlsx'
      
    `;
  }
  static Query_Darkbrownmuleregistry_Deleted_Upload_Detail(id) {
    return `
      DELETE FROM BROWN_MULE_UPLOAD_FILE_DETAIL bmufd WHERE FILE_INFO_ID = '${id}'

    `;
  }
  static Query_Darkbrownmuleregistry_Deleted_Upload_REPO(id) {
    return `
      DELETE FROM BROWN_MULE_REPO eaufd WHERE CREATE_FILE_DETAIL_ID = '${id}'
    `;
  }
  static Query_DarkBrown_REPO(personal) {
    return `
     SELECT PERSONAL_ID,FIRST_NAME,ACCOUNT_NUMBER,LAST_NAME FROM BROWN_MULE_REPO bmr WHERE CREATE_FILE_DETAIL_ID = '${personal}'
    `;
  }
  static Query_FilenamrDarkbrownmuleregistry_INFO(filename) {
    return `
      SELECT FILE_NAME FROM BROWN_MULE_UPLOAD_FILE_INFO WHERE FILE_NAME = '${filename}.xlsx'
    `;
  }
  // static Query_Darkbrownmuleregistry_Deleted_Upload_Detail_100_record(id) {
  //   return `
  //     DELETE FROM BROWN_MULE_UPLOAD_FILE_DETAIL bmufd WHERE FILE_INFO_ID IN '${id}'
  //   `;
  // }

  // static Query_Darkbrownmuleregistry_Deleted_Upload_REPO_Detail_100_record(id) {
  //   return `
  //     DELETE FROM BROWN_MULE_REPO eaufd WHERE CREATE_FILE_DETAIL_ID IN '${id}'
  //   `;
  // }

  static Query_Darkbrownmuleregistry_Upload_Detail_cannel(id) {
    return `
      SELECT INPUT_PERSONAL_ID, INPUT_ACCOUNT_NUMBER FROM BROWN_MULE_UPLOAD_FILE_DETAIL WHERE DETAIL_ID = '${id}'
    `;
  }
  static Query_Darkbrownmuleregistry_Upload_Detail_cannel_100_record(id) {
    return `
      SELECT INPUT_PERSONAL_ID, INPUT_ACCOUNT_NUMBER FROM BROWN_MULE_UPLOAD_FILE_DETAIL bmufd WHERE FILE_INFO_ID = '${id}' ORDER BY INDEX_NUMBER ASC
    `;
  }
  static Query_Delete_BankCaseID_Master_Sub(id) {
      return ` DELETE FROM MASTER_CASE_SUB_CASE_EDGE_RELATIONSHIP mcscer WHERE MASTER_CASE_ID = '${id}'
       `
  }
    static Query_Delete_BankCaseID_Master_Ststus(id) {
      return ` DELETE FROM MASTER_CASE_STATUS mcs WHERE MASTER_CASE_ID = '${id}'
       `
    }
    static Query_Delete_BankCaseID(id) {
      return ` DELETE FROM FRAUDCASE f WHERE MASTER_CASE_ID = '${id}'
       `
    }
    // -- ACCOUNT_CATEGORY_ID 1 bank 2 non-bank
    static Query_Prepara_Bank_And_Non_Bank_account_category(id,short_name) {
      return `
      select INSTITUTION_CODE, SHORT_NAME, INSTITUTION_NAME,USER_LOGIN,CATEGORY_NAME
      from FINANCIAL_INSTITUTION FI
      JOIN ACCOUNT_CATEGORY AC ON FI.ACCOUNT_CATEGORY_ID = AC.ID
      where ACCOUNT_CATEGORY_ID = '${id}'
      AND INSTITUTION_CODE is not NULL
      AND SHORT_NAME = '${short_name}'
      fetch first 1 row ONLY
      `
    }
    static Query_Prepara_BankcaseID() {
      return `
      SELECT MASTER_CASE_ID FROM FRAUDCASE f ORDER BY f.CREATE_DATE_TIME DESC 
      fetch first 1 row ONLY
      `
    }
    static Query_Prepara_BankcaseID_Subcase() {
      return `
      SELECT SUB_CASE_ID FROM BANKFRAUDCASE b  ORDER BY b.CREATE_DATETIME DESC 
      fetch first 1 row ONLY
      `
    }
    static Query_Prepara_TAX_ID(b) {
      return `
      SELECT TAX_ID FROM FINANCIAL_INSTITUTION FI WHERE TAX_ID = '${b}'
      `
    }
  
}





















Given('Query Personal_ID , REF_CODE , FRIST_NAME , LAST_NAME number is {string}', (number) => {
  const query = `
    SELECT DISTINCT FA.PERSONAL_ID, FA.ACCOUNT_NUMBER, REF_CODE, STATUS, FA.FIRST_NAME, FA.LAST_NAME, BANK_CODE
    FROM FRAUD_ACCOUNT FA
    JOIN FRAUD_PERSON FP ON FA.PERSONAL_ID = FP.PERSONAL_ID AND FP.FRAUD_LEVEL = 2
    JOIN FRAUD_ACCOUNT_REPORT FAR ON FAR.ACCOUNT_ID = FA.ID
    JOIN FRAUD_REF_CODE_MAPPING FRCM ON FRCM.REPORT_CYCLE_ID = FAR.CYCLE_ID AND FA.PERSONAL_ID = FRCM.PERSONAL_ID
    JOIN FRAUD_REF_CODE_MULE FRCMULE ON FRCMULE.REF_CODE_ID = FRCM.REF_CODE_ID AND FRCMULE.STATUS = 1
    LEFT JOIN AOC_WITHDRAW_MULE_REPO AWMR ON MULE_IDENTITY_ID = FA.PERSONAL_ID
    WHERE FA.IS_ACTIVE = 1 AND BANK_CODE = '025' AND AWMR.ID IS NULL
    ORDER BY FRCMULE.REF_CODE
    OFFSET ${number} ROWS FETCH NEXT ${number} ROWS ONLY
  `;

  cy.task('queryOracleDatabase', { query }).then((result) => {
    Cypress.env('queryResults', result);  // setting variable global
    result.forEach((row, index) => {
      const [personalId, accountNumber, refCode, , firstName, lastName] = row;
      cy.log(`Row ${index + 1}:`);
      cy.log(result[index])
      cy.log(`PERSONAL_ID: ${personalId}`);
      cy.log(`ACCOUNT_NUMBER: ${accountNumber}`);
      cy.log(`REF_CODE: ${refCode}`);
      cy.log(`FIRST_NAME: ${firstName}`);
      cy.log(`LAST_NAME: ${lastName}`);
    });
  });
});

When('get log data', ()=>{
  const queryResults = Cypress.env('queryResults');
  expect(queryResults).to.be.an('array').that.is.not.empty;
  expect(queryResults).to.be.an('array').that.is.not.empty;
  queryResults.forEach((row, index) => {
    cy.log(`Using Row ${index + 1}:`);
    cy.log(`PERSONAL_ID: ${row[0]}`);
    cy.log(`ACCOUNT_NUMBER: ${row[1]}`);
    cy.log(`REF_CODE: ${row[2]}`);
  });
})

Then('decrypt data',()=>{
  const queryResults = Cypress.env('queryResults');
  expect(queryResults).to.be.an('array').that.is.not.empty;
  queryResults.forEach((row, index) => {
    cy.log(`Using Row ${index + 1}:`);
    cy.request({
      method: "POST",
      url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
      body: row[4],
      headers: {
        "Content-Type": "text/plain",
      },
    }).then((response) => {
      expect(response.status).to.equal(200);
      cy.log(`Decrypted FIRST_NAME: ${response.body}`);
    });
  });
})

Then("decrypt data all", () => {
  const queryResults = Cypress.env("queryResults");
  expect(queryResults).to.be.an("array").that.is.not.empty;

  queryResults.forEach((row, index) => {
    cy.log(`Using Row ${index + 1}:`);
    const [personalId, accountNumber, refCode,status , firstName, lastName] = row;
    cy.request({
      method: "POST",
      url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
      body: personalId,
      headers: {
        "Content-Type": "text/plain",
      },
    }).then((personalIdResponse) => {
      expect(personalIdResponse.status).to.equal(200);
      cy.log(`Decrypted PERSONAL_ID: ${personalIdResponse.body}`);

      cy.request({
        method: "POST",
        url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
        body: firstName,
        headers: {
          "Content-Type": "text/plain",
        },
      }).then((firstNameResponse) => {
        expect(firstNameResponse.status).to.equal(200);
        cy.log(`Decrypted FIRST_NAME: ${firstNameResponse.body}`);

        cy.request({
          method: "POST",
          url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
          body: lastName,
          headers: {
            "Content-Type": "text/plain",
          },
        }).then((lastNameResponse) => {
          expect(lastNameResponse.status).to.equal(200);
          cy.log(`Decrypted LAST_NAME: ${lastNameResponse.body}`);
        });
      });
    });
  });
});

Then("decrypt all and keep it", () => {
  const queryResults = Cypress.env("queryResults");
  expect(queryResults).to.be.an("array").that.is.not.empty;

  const decryptedResults = []; // ใช้เก็บข้อมูลที่ถอดรหัส

  queryResults.forEach((row, index) => {
    cy.log(`Using Row ${index + 1}:`);
    const [personalId, , , , firstName, lastName] = row;

    // Decrypt PERSONAL_ID
    cy.request({
      method: "POST",
      url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
      body: personalId,
      headers: {
        "Content-Type": "text/plain",
      },
    }).then((personalIdResponse) => {
      expect(personalIdResponse.status).to.equal(200);
      const decryptedPersonalId = personalIdResponse.body;
      cy.log(`Decrypted PERSONAL_ID: ${decryptedPersonalId}`);

      // Decrypt FIRST_NAME
      cy.request({
        method: "POST",
        url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
        body: firstName,
        headers: {
          "Content-Type": "text/plain",
        },
      }).then((firstNameResponse) => {
        expect(firstNameResponse.status).to.equal(200);
        const decryptedFirstName = firstNameResponse.body;
        cy.log(`Decrypted FIRST_NAME: ${decryptedFirstName}`);

        // Decrypt LAST_NAME
        cy.request({
          method: "POST",
          url: "https://cfr-dev.itmx.co.th/fraud-api/api/aes/decrypt",
          body: lastName,
          headers: {
            "Content-Type": "text/plain",
          },
        }).then((lastNameResponse) => {
          expect(lastNameResponse.status).to.equal(200);
          const decryptedLastName = lastNameResponse.body;
          cy.log(`Decrypted LAST_NAME: ${decryptedLastName}`);

          // เก็บค่าที่ถอดรหัสไว้ใน global variable
          decryptedResults.push({
            personalId: decryptedPersonalId,
            firstName: decryptedFirstName,
            lastName: decryptedLastName,
          });
          Cypress.env("decryptedResults", decryptedResults);
          cy.log("Stored decrypted data globally.");
          decryptedResults.forEach((row, index) => {
            cy.log(`Using Row ${index + 1}:`);
            Cypress.env("decryptedPersonalId", decryptedPersonalId);
            cy.log(`PERSONAL_ID: ${decryptedPersonalId}`);
            cy.log(`first_name: ${decryptedFirstName}`);
            cy.log(`last_name: ${decryptedLastName}`);
          });
        });
      });
    });
  });
});

