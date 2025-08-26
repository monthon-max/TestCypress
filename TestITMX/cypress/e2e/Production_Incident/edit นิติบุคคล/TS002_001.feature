Feature: ตรวจสอบการ Edit type นิติบุคคล เป็น type อื่น


    Scenario: Call API HelpCheck
          Given Delete BankCaseIDArray "25660509BBL00011"
          
    Scenario: TC002_001_001 Edit จากType นิติบุคคล แล้วเปลี่ยนเป็นชาวต่างชาติ โดยระบุนามสกุล ของผู้เสียหาย
      And login ITMX web portal by BBL 2 account
      And go to menu create master case by excel file
      When upload file positive "/scenario3/Horse1-NewCase-From-BBL-edit"
      And confirm to create master case
      And click edit first record
      And edit sender person type is "ชาวต่างชาติ" value
      And should be able sender surename field and display receiver surename on update page is "mama"

    Scenario: TC002_001_002 Edit จากType นิติบุคคล แล้วเปลี่ยนเป็นชาวต่างชาติ โดยไม่ระบุนามสกุล ของผู้เสียหาย
      Given Delete BankCaseIDArray "25660509BBL00011"
      And login ITMX web portal by BBL 2 account
      And go to menu create master case by excel file
      When upload file positive "/scenario3/Horse1-NewCase-From-BBL-edit"
      And confirm to create master case
      And click edit first record
      And edit sender person type is "ชาวต่างชาติ" value
      And confirm to save
      And should be display popup error sender surename on update page

    Scenario: TC002_001_003 Edit จากType นิติบุคคล แล้วเปลี่ยนเป็นชาวต่างชาติ โดยระบุนามสกุล ของผู้ต้องสงสัย
      Given Delete BankCaseIDArray "25660509BBL00011"
      And login ITMX web portal by BBL 2 account
      And go to menu create master case by excel file
      When upload file positive "/scenario3/Horse1-NewCase-From-BBL-edit"
      And confirm to create master case
      And click edit first record
      And edit receiver person type is "ชาวต่างชาติ" value 
      And should be able receiver field and display receiver surename on update page is "mama"
  
    Scenario:TC002_001_004 Edit จากType นิติบุคคล แล้วเปลี่ยนเป็นชาวต่างชาติ โดยไม่ระบุนามสกุล ของผู้ต้องสงสัย
      Given Delete BankCaseIDArray "25660509BBL00011"
      And login ITMX web portal by BBL 2 account
      And go to menu create master case by excel file
      When upload file positive "/scenario3/Horse1-NewCase-From-BBL"
      And confirm to create master case
      And click edit first record
      And edit receiver person type is "ชาวต่างชาติ" value
      And clear sure name and confirm to save
      And should be display popup error receiver surename on update page

    Scenario: TC002_002_001 Edit จากType นิติบุคคล แล้วเปลี่ยนเป็นบุคคลธรรมดาโดยระบุนามสกุล ของผู้เสียหาย
      Given Delete BankCaseIDArray "25660509BBL00011"
      And login ITMX web portal by BBL 2 account
      And go to menu create master case by excel file
      When upload file positive "/scenario3/Horse1-NewCase-From-BBL-edit"
      And confirm to create master case
      Then update sender name back to original sender surename is "mama" person number is "4040620627193" and  person type is "บุคคลธรรมดา"

    Scenario: TC002_002_002 Edit จากType นิติบุคคล แล้วเปลี่ยนเป็นบุคคลธรรมดาโดยระบุนามสกุล ของผู้เสียหาย
      Given Delete BankCaseIDArray "25660509BBL00011"
      And login ITMX web portal by BBL 2 account
      And go to menu create master case by excel file
      When upload file positive "/scenario3/Horse1-NewCase-From-BBL-edit"
      And confirm to create master case
      And click edit first record
      And edit sender person type is "บุคคลธรรมดา" value
      And confirm to save
      And should be display popup error sender surename on update page
      And should be display popup error sender personal id on update page

    Scenario: TC002_002_003 Edit จากType นิติบุคคล แล้วเปลี่ยนเป็นบุคคลธรรมดาโดยระบุนามสกุล ของผู้ต้องสงสัย
      Given Delete BankCaseIDArray "25660509BBL00011"
      And login ITMX web portal by BBL 2 account
      And go to menu create master case by excel file
      When upload file positive "/scenario3/Horse1-NewCase-From-BBL-edit"
      And confirm to create master case
      And click edit first record
      And edit receiver person type is "บุคคลธรรมดา" value
      And should be able receiver field and display receiver surename on update page is "mama" and personal id is "4040620627193"

    Scenario: TC002_002_004 Edit จากType นิติบุคคล แล้วเปลี่ยนเป็นบุคคลธรรมดาโดยไม่ระบุนามสกุล ของผู้ต้องสงสัย
      Given Delete BankCaseIDArray "25660509BBL00011"
      And login ITMX web portal by BBL 2 account
      And go to menu create master case by excel file
      When upload file positive "/scenario3/Horse1-NewCase-From-BBL-edit"
      And confirm to create master case
      And click edit first record
      And edit receiver person type is "บุคคลธรรมดา" value
      And confirm to save
      And should be display popup error receiver personal id on update page
      And should be display popup error receiver surename on update page