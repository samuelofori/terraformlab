#Specify company name
variable "corp" {

    description = "naming convention for all resources"
    default = "mcdonalds-incorporated" #specify the naming prefic for your environment - eg  Prod-rock

}




#terraform console
#"${var.corp}-subnet-nw10-8er"
#output from above command is  --> "mcdonalds-incorporated-subnet-nw10-8er"