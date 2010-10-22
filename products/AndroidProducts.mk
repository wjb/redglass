#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#
# This file should set PRODUCT_MAKEFILES to a list of product makefiles
# to expose to the build system.  LOCAL_DIR will already be set to
# the directory containing this file.
#
# This file may not rely on the value of any variable other than
# LOCAL_DIR; do not use any conditionals, and do not look up the
# value of any variable that isn't set in this file or in a file that
# it includes.
#

# Change 'default' to match your theme name

PRODUCT_MAKEFILES := \
        $(LOCAL_DIR)/redglass_bravo.mk \
	$(LOCAL_DIR)/redglass_dream_sapphire.mk \
        $(LOCAL_DIR)/redglass_espresso.mk \
        $(LOCAL_DIR)/redglass_hero.mk \
        $(LOCAL_DIR)/redglass_heroc.mk \
        $(LOCAL_DIR)/redglass_inc.mk \
        $(LOCAL_DIR)/redglass_liberty.mk \
	$(LOCAL_DIR)/redglass_passion.mk \
	$(LOCAL_DIR)/redglass_sholes.mk \
        $(LOCAL_DIR)/redglass_supersonic.mk \
        $(LOCAL_DIR)/redglass_vibrant.mk
