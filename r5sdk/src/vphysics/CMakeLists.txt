cmake_minimum_required( VERSION 3.16 )
add_module( "lib" "vphysics" "vpc" ${FOLDER_CONTEXT} TRUE TRUE )

start_sources()

add_sources( SOURCE_GROUP "Private"
    "physics_collide.cpp"
    "physics_collide.h"
    "QHull.cpp"
    "QHull.h"
)

add_sources( SOURCE_GROUP "Public"
    "${ENGINE_SOURCE_DIR}/public/vphysics/vphysics_interface.h"
    "${ENGINE_SOURCE_DIR}/public/vphysics/phyfile.h"
    "${ENGINE_SOURCE_DIR}/public/vphysics/vcollide.h"
    "${ENGINE_SOURCE_DIR}/public/trace.h"
    "${ENGINE_SOURCE_DIR}/public/gametrace.h"
    "${ENGINE_SOURCE_DIR}/public/cmodel.h"
)

end_sources()
