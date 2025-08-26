Feature: Withdraw_Black_Mule_Web_Search

  As a Validate black mule
  ดูชื่อเคส กดลิ้งใน Doc เลยครับ
  I want to validate case follow Doc : https://itmx365-my.sharepoint.com/:x:/r/personal/itmxqa365_itmx_co_th/_layouts/15/Doc.aspx?sourcedoc=%7BE6042766-CC89-4F83-AFCD-BE77C84F9F6A%7D&file=CFR_Registry%20Withdraw%20Black%20Mule%20Web%20Search_SIT_Test%20Case_V0.1_20250430.xlsx&action=default&mobileredirect=true
    Background:
    # Given login by BBL 002 session
    Given login by BBL 002
    And go to menu web seach
    
    Scenario: TC001_001 
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "ผู้เสียหายแจ้งข้อมูลผิดพลาด" and Note Data "AUTODATA" another query is "Query_Withdraw_Black_Mule" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_002
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "ผู้เสียหายแจ้งข้อมูลผิดพลาด" and Note Data "AUTODATA" another query is "Query_Withdraw_Black_Mule" in rule ""
      Then get data in validate result mule_history
    
    Scenario: TC001_003
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "เจ้าหน้าที่บันทึกข้อมูลผิดพลาด" and Note Data "AUTODATA35" another query is "Query_Withdraw_Black_Mule" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_004
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "เจ้าหน้าที่บันทึกข้อมูลผิดพลาด" and Note Data "AUTODATA35" another query is "Query_Withdraw_Black_Mule" in rule ""
      Then get data in validate result mule_history
    
    Scenario: TC001_005
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "ผู้เสียหายแจ้งข้อมูลผิดพลาด" and Note Data "AUTODATA" another query is "Query_Withdraw_Black_Mule" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_006
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "ผู้เสียหายแจ้งข้อมูลผิดพลาด" and Note Data "AUTODATA" another query is "Query_Withdraw_Black_Mule" in rule ""
      Then get data in validate result mule_history
    
    Scenario: TC001_007
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "1410631903652" or Refcode is "HR00000065" and Condition Mule is "" and Note Data "" another query is "Query_Withdraw_Black_Mule" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_008
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "1410631903652" or Refcode is "HR00000065" and Condition Mule is "" and Note Data "" another query is "Query_Withdraw_Black_Mule" in rule ""
      Then get data in validate result mule_history
    
    Scenario: TC001_009
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "7VA26F447CX0B" or Refcode is "" and Condition Mule is "" and Note Data "" another query is "Query_Withdraw_Black_Mule" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_010
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "7VA26F447CX0B" or Refcode is "" and Condition Mule is "" and Note Data "" another query is "Query_Withdraw_Black_Mule" in rule ""
      Then get data in validate result mule_history
    
    Scenario: TC001_011
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "191410185423800000" or Refcode is "HR00000068" and Condition Mule is "" and Note Data "" another query is "Query_Withdraw_Black_Mule" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_012
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "191410185423800000" or Refcode is "HR00000068" and Condition Mule is "" and Note Data "" another query is "Query_Withdraw_Black_Mule" in rule ""
      Then get data in validate result mule_history
    
    Scenario: TC001_013
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "ผู้เสียหายแจ้งข้อมูลผิดพลาด" and Note Data "2" another query is "Query_Withdraw_Black_Mule_Rule" in rule "1"
      Then get data in validate result mule_profile
    
    Scenario: TC001_014
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "ผู้เสียหายแจ้งข้อมูลผิดพลาด" and Note Data "2" another query is "Query_Withdraw_Black_Mule_Rule" in rule "1"
      Then get data in validate result mule_history

    Scenario: TC001_015
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "1958694508681" or Refcode is "HR00000075" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_016
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "1958694508681" or Refcode is "HR00000075" and Condition Mule is "" and Note Data "2" another query is "" in rule ""
      Then get data in validate result mule_history
    
    Scenario: TC001_017
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "ผู้เสียหายแจ้งข้อมูลผิดพลาด" and Note Data "2" another query is "Query_Withdraw_Black_Mule_Rule" in rule "3"
      Then get data in validate result mule_profile
    
    Scenario: TC001_018
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "ผู้เสียหายแจ้งข้อมูลผิดพลาด" and Note Data "2" another query is "Query_Withdraw_Black_Mule_Rule" in rule "3"
      Then get data in validate result mule_history

    Scenario: TC001_019
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "เจ้าหน้าที่บันทึกข้อมูลผิดพลาด" and Note Data "2" another query is "Query_Withdraw_Black_Mule_Rule" in rule "4"
      Then get data in validate result mule_profile
    
    Scenario: TC001_020
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "เจ้าหน้าที่บันทึกข้อมูลผิดพลาด" and Note Data "2" another query is "Query_Withdraw_Black_Mule_Rule" in rule "4"
      Then get data in validate result mule_history

    Scenario: TC001_021
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "2553605021168" or Refcode is "HR00000078" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_022
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "2553605021168" or Refcode is "HR00000078" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_history

    Scenario: TC001_023
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "ผู้เสียหายแจ้งข้อมูลผิดพลาด" and Note Data "1" another query is "Query_Withdraw_Black_Mule_Rule" in rule "2"
      Then get data in validate result mule_profile
    
    Scenario: TC001_024
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "ผู้เสียหายแจ้งข้อมูลผิดพลาด" and Note Data "1" another query is "Query_Withdraw_Black_Mule_Rule" in rule "2"
      Then get data in validate result mule_history

    Scenario: TC001_025
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "4Q8128BAWR820" or Refcode is "HR00000080" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_026
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "4Q8128BAWR820" or Refcode is "HR00000080" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_history

    Scenario: TC001_027
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "BA80V046CX662" or Refcode is "HR00000081" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_028
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "BA80V046CX662" or Refcode is "HR00000081" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_history
    
    Scenario: TC001_029
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "ผู้เสียหายแจ้งข้อมูลผิดพลาด" and Note Data "1" another query is "Query_Withdraw_Black_Mule_Rule" in rule "4"
      Then get data in validate result mule_profile
    
    Scenario: TC001_030
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "ผู้เสียหายแจ้งข้อมูลผิดพลาด" and Note Data "1" another query is "Query_Withdraw_Black_Mule_Rule" in rule "4"
      Then get data in validate result mule_history

    Scenario: TC001_031
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "25YR27V0YQ941" or Refcode is "HR00000083" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_032
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "25YR27V0YQ941" or Refcode is "HR00000083" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_history

    Scenario: TC001_033
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "530337390735500000" or Refcode is "HR00000084" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_034
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "530337390735500000" or Refcode is "HR00000084" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_history

    Scenario: TC001_035
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "212290413203700000" or Refcode is "HR00000085" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_036
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "212290413203700000" or Refcode is "HR00000085" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_history

    Scenario: TC001_037
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "383531423928800000" or Refcode is "HR00000086" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_038
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "383531423928800000" or Refcode is "HR00000086" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_history

    Scenario: TC001_39
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "646592037556100000" or Refcode is "HR00000087" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_40
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "646592037556100000" or Refcode is "HR00000087" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_history

    Scenario: TC001_41
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "646592037556100000" or Refcode is "HR00000087" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_42
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "646592037556100000" or Refcode is "HR00000087" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_history

    Scenario: TC001_43
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "20BAS86CA123A" or Refcode is "HR00000104" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_44
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "20BAS86CA123A" or Refcode is "HR00000104" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_history

    Scenario: TC001_45
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "19BAS86CA943J" or Refcode is "" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_46
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "19BAS86CA943J" or Refcode is "" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_history

    Scenario: TC001_47
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "1834683352622" or Refcode is "HR00000089" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_48
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "1834683352622" or Refcode is "HR00000089" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_history

    Scenario: TC001_49
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "1834683352622" or Refcode is "HR00000089" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_50
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "1834683352622" or Refcode is "HR00000089" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_history

    Scenario: TC001_51
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "เจ้าหน้าที่บันทึกข้อมูลผิดพลาด" and Note Data "" another query is "Query_Withdraw_Black_Mule_have_Brown_Mule" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_52
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "เจ้าหน้าที่บันทึกข้อมูลผิดพลาด" and Note Data "" another query is "Query_Withdraw_Black_Mule_have_Brown_Mule" in rule ""
      Then get data in validate result mule_history

    Scenario: TC001_53
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "ผู้เสียหายแจ้งข้อมูลผิดพลาด" and Note Data "" another query is "Query_Withdraw_Black_Mule_have_Exchange" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_54
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "" and Condition Mule is "ผู้เสียหายแจ้งข้อมูลผิดพลาด" and Note Data "" another query is "Query_Withdraw_Black_Mule_have_Exchange" in rule ""
      Then get data in validate result mule_history

    Scenario: TC001_55
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "1339140494603" or Refcode is "HR00000071" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_56
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "1339140494603" or Refcode is "HR00000071" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_history

    Scenario: TC001_57
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "7734273479762" or Refcode is "" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_58
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "HR00000072" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_history

    Scenario: TC001_59
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "6803100873752" or Refcode is "HR00000109" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_60
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "6803100873752" or Refcode is "HR00000109" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_history

    Scenario: TC001_61
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "4744386021082" or Refcode is "" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_62
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "CF00059471" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_history

    Scenario: TC001_63
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "5393482558637" or Refcode is "" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_64
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "CB00003998" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_history

    Scenario: TC001_65
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "6408860901745" or Refcode is "" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_profile
    
    Scenario: TC001_66
      Then should be display mule web search preview page of "mule_page" with valid description
      Given Query "1" Seacrhing with personalID is "" or Refcode is "HR00000118" and Condition Mule is "" and Note Data "" another query is "" in rule ""
      Then get data in validate result mule_history