#!/bin/bash

# Copyright © 2016 Mozg. All rights reserved.
# See LICENSE.txt for license details.

#

#RUN=$(bash app.sh postdeploy | curl -F 'sprunge=<-' http://sprunge.us)
RUN=$(bash app.sh postdeploy | nc termbin.com 9999)

curl -X POST https://fleep.io/hook/OLuIRi0JRt2yv5OQisX6tg --data "Yo_postdeploy :: ${RUN}"

#
