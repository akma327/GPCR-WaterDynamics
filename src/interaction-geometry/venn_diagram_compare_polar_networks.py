# venn_diagram_compare_polar_networks.py 

USAGE_STR = """

# Purpose 
# Given two polar networks P1 and P2, this script generates json dictionaries for 
# bundle plots that represent interactions that are exclusively part of P1, 
# exclusively part of P2, or belonging to P1 and P2. For the last intersection case,
# will generate two dictionaries for the same interactions but have frequency values
# correspond to P1 and P2. Essentially creating a venn diagram for interactions in
# two polar networks. Interactions that are found in the intersection tells the user 
# which interactions are conserved, and the difference in frequency/line thickness 
# represents to what extent the conservation is. Interactions belonging exclusively 
# to one state or the other represent interactions that are unique or important to 
# a single polar network and not the other hence giving an idea of important tranisitions 
# between states. 

# Usage 
# python venn_diagram_compare_polar_networks.py <POLAR_NETWORK_JSON1> <POLAR_NETWORK_JSON2> <OUTPUT_DIRECTORY>

# Arguments 
# <POLAR_NETWORK_JSON1> Absolute path to the first json file 


"""