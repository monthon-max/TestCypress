Feature: ค้นหาข้อมูล


    Scenario: TS-CFR-SEARCH-001 As a Bank, able to search transaction by bank case id
      Given login ITMX web portal by CMBT user
      When search result with case id "25660505CMBT00001"
      Then should be displsy result only case id "25660505CMBT00001"

