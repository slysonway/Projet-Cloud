#!/bin/bash

. ./terraform-apply.sh

. ./push_mysql_data.sh

#az login

. ./deploy-function.sh

. ./deploy-back.sh

. ./deploy-front.sh

