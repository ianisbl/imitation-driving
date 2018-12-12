__precompile__(true)

module NGSIM

using AutomotiveDrivingModels
using DataFrames
using Distributions
using Printf

export
    NGSIMRoadway,
    RoadwayInputParams,
    Roadway,

    ROADWAY_80,
    ROADWAY_101,
    ROADWAY_LANKERSHIM,

    NGSIMTrajdata,
    VehicleSystem,
    FilterTrajectoryResult,

    NGSIM_TIMESTEP,
    NGSIM_TRAJDATA_PATHS,
    TRAJDATA_PATHS,

    carsinframe,
    load_ngsim_trajdata,
    get_corresponding_roadway,
    filter_trajectory!,
    symmetric_exponential_moving_average!,
    load_trajdata,
    convert_raw_ngsim_to_trajdatas,
    write_roadways_to_dxf,
    write_roadways_from_dxf,
    read_dxf

include("roadway.jl")
include("ngsim_trajdata.jl")
include("trajdata.jl")

end # module
