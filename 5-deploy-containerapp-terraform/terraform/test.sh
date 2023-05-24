az containerapp create --name "containertam" \
  --resource-group "firstcontainerapp002-rg" \
  --environment "firstcontainerappacaenv" \
  --user-assigned "/subscriptions/04109105-f3ca-44ac-a3a7-66b4936112c3/resourcegroups/firstcontainerapp002-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/containerappmi" \
  --registry-identity "/subscriptions/04109105-f3ca-44ac-a3a7-66b4936112c3/resourcegroups/firstcontainerapp002-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/containerappmi" \
  --registry-server "firstcontainerapp002acracr.azurecr.io" \
  --image "firstcontainerapp002acracr.azurecr.io/aspcoresample:58533d062c15af417615e9866e37dcaa36f49845"
