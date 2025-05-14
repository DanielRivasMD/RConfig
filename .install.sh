#!/bin/bash
####################################################################################################

# config
source "$(pwd)/.config.sh"

###################################################################################################

# R
echo ''
echo "${YELLOW}Linking R config${NC}"
echo "${RED}====================================================================================================${NC}"
if [[ -d "${home}/.Rprofile.d" ]]; then rm -rf "${home}/.Rprofile.d"; fi       && echo "Directory created ${BIYELLOW}=>${NC} ${BGREEN}Rprofile${NC}"
ln -sf "$(pwd)/R/Rprofile.d" "${home}/.Rprofile.d"                                    && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}Rprofile${NC} directory"
ln -sf "$(pwd)/R/osx_Rprofile.R" "${home}/.Rprofile"                                  && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}Rprofile${NC}"
echo "${RED}====================================================================================================${NC}"

####################################################################################################
