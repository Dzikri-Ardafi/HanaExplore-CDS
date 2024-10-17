using {API_BUSINESS_PARTNER as apiBupa} from '../srv/external/API_BUSINESS_PARTNER';
namespace sap.capire.schema.suppliers; // --> custome name space

entity Risks {
    Name: String
};

entity Suppliers as projection on apiBupa.A_BusinessPartner{
    key BusinessPartner as ID,
    BusinessPartnerFullName as fullname,
    BusinessPartnerIsBlocked as IsBlocked
}