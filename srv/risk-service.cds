/* -------------------------------------------------------------------------- */
/*           The service is limited to read accesses using @readonly          */
/*           and the read permission is given to the roles                    */
/*                  RiskViewer and RiskManager.                               */
/* -------------------------------------------------------------------------- */


using {sap.capire.schema.suppliers as my } from '../db/schema';

service RiskService {
    entity Risks @(restrict : [
    // ...
          ]) as projection on my.Risks;
      annotate Risks with @odata.draft.enabled;
    // ...
    @readonly
    entity Suppliers @(restrict : [
            //   {
            //       grant : [ 'READ' ],
            //       to : [ 'RiskViewer', 'RiskManager' ]
            //   }
          ]) as projection on my.Suppliers;
}