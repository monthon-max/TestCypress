Feature: แก้ไขรายละเอียดเคส การตรวจพบรายการ

    Scenario: TC-CFR-UPDATE_139 As a Sender Bank (no sub case), able to update case type on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit case type to "หลอกลวงให้กู้เงินอันมีลักษณะฉ้อโกง กรรโชก หรือรีดเอาทรัพย์" value
      Then click edit data
      And close update page
      And should be display case type on update page is "หลอกลวงให้กู้เงินอันมีลักษณะฉ้อโกง กรรโชก หรือรีดเอาทรัพย์"
      And should be display case type on view page is "หลอกลวงให้กู้เงินอันมีลักษณะฉ้อโกง กรรโชก หรือรีดเอาทรัพย์"
      Then update case type back to original "หลอกลวงซื้อขายสินค้า หรือบริการ"

    Scenario: TC-CFR-UPDATE_140 As a Receiver Bank (no sub case), NOT able to update case type on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00007" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be diable field and display case type on update page is "หลอกลวงซื้อขายสินค้า หรือบริการ"

    Scenario: TC-CFR-UPDATE_141 As a Sender Bank (have sub case), able to update case type on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      And click edit first record
      When edit case type to "หลอกลวงให้กู้เงินอันมีลักษณะฉ้อโกง กรรโชก หรือรีดเอาทรัพย์" value
      Then click edit data
      And close update page
      And should be display case type on update page is "หลอกลวงให้กู้เงินอันมีลักษณะฉ้อโกง กรรโชก หรือรีดเอาทรัพย์"
      And should be display case type on view page is "หลอกลวงให้กู้เงินอันมีลักษณะฉ้อโกง กรรโชก หรือรีดเอาทรัพย์"
      Then update case type back to original "หลอกลวงซื้อขายสินค้า หรือบริการ"

    Scenario: TC-CFR-UPDATE_142 As a Receiver Bank (have sub case), NOT able to update case type on web portal
      Given login ITMX web portal by MHCB user
      And search result with case id "25660505CMBT00004" with to account number "1000000039" and from account number "1000000022"
      When click edit first record
      Then should be diable field and display case type on update page is "หลอกลวงซื้อขายสินค้า หรือบริการ"

    Scenario: TC-CFR-UPDATE_143  As a Same Banks of Sender&Receiver (no sub case), able to update case type on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00005" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit case type to "หลอกลวงให้กู้เงินอันมีลักษณะฉ้อโกง กรรโชก หรือรีดเอาทรัพย์" value
      Then click edit data
      And close update page
      And should be display case type on update page is "หลอกลวงให้กู้เงินอันมีลักษณะฉ้อโกง กรรโชก หรือรีดเอาทรัพย์"
      And should be display case type on view page is "หลอกลวงให้กู้เงินอันมีลักษณะฉ้อโกง กรรโชก หรือรีดเอาทรัพย์"
      Then update case type back to original "หลอกลวงซื้อขายสินค้า หรือบริการ"

    Scenario: TC-CFR-UPDATE_144  As a Same Banks of Sender&Receiver (have sub case), able to update case type on web portal
      Given login ITMX web portal by CMBT user
      And search result with case id "25660505CMBT00006" with to account number "2000000022" and from account number "1000000022"
      And click edit first record
      When edit case type to "หลอกลวงให้กู้เงินอันมีลักษณะฉ้อโกง กรรโชก หรือรีดเอาทรัพย์" value
      Then click edit data
      And close update page
      And should be display case type on update page is "หลอกลวงให้กู้เงินอันมีลักษณะฉ้อโกง กรรโชก หรือรีดเอาทรัพย์"
      And should be display case type on view page is "หลอกลวงให้กู้เงินอันมีลักษณะฉ้อโกง กรรโชก หรือรีดเอาทรัพย์"
      Then update case type back to original "หลอกลวงซื้อขายสินค้า หรือบริการ"