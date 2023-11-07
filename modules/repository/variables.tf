variable "name" {
    type = string
}

variable "prefix" {
    type = string
    default = "tf-"
}

variable "description" {
    type = string
    default = null
}

variable "visibiliy" {
    type = string
    default = "private"

    validation {
        condition     = contains(["private", "public", "internal"], var.visibiliy)
        error_message = "Valid values for var: visibiliy are (private, public, internal)."
    } 
}