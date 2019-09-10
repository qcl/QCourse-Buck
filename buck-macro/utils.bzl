
def bundle_identifier(name):
    return "tw.qcl.%s" % (name)

def info_plist_substitutions(name):
    substitutions = {
        "DEVELOPMENT_LANGUAGE": "en",
        "EXECUTABLE_NAME": name,
        "PRODUCT_BUNDLE_PACKAGE_TYPE": "APPL",
        "PRODUCT_BUNDLE_IDENTIFIER": bundle_identifier(name),
        "PRODUCT_NAME": name,
    }
    return substitutions

def merge_dict(a,b):
    d = {}
    d.update(a)
    d.update(b)
    return d

SHARED_CONFIGS = {
    "IPHONEOS_DEPLOYMENT_TARGET": "11.0",  # common target version/
    "SDKROOT": "iphoneos", # platform
    "GCC_OPTIMIZATION_LEVEL": "0",  # clang optimization
    "SWIFT_WHOLE_MODULE_OPTIMIZATION": "YES",  # for build performance
    "ONLY_ACTIVE_ARCH": "YES",
    "LD_RUNPATH_SEARCH_PATHS": "@executable_path/Frameworks", # To allow source files in binary
    "SWIFT_OPTIMIZATION_LEVEL": "-Onone"
}


ALL_LOAD_LINKER_FLAG = "-all_load"


OTHER_LINKER_FLAGS_KEY = 'OTHER_LDFLAGS'

def configs_with_updated_linker_flags(configs, other_linker_flags):
    if other_linker_flags == None:
        return configs
    else:
        updated_configs = { }
        for build_configuration in configs:
            updated_configs[build_configuration] = config_with_updated_linker_flags(
                configs[build_configuration],
                other_linker_flags)
        return updated_configs

def config_with_updated_linker_flags(config, other_linker_flags, config_key=OTHER_LINKER_FLAGS_KEY):
    new_config = { }
    config_key_found = False
    for key in config:
        if key == config_key:
            new_config[key] = config[key] + (" %s" % other_linker_flags)
            config_key_found = True
        else:
            new_config[key] = config[key]

    if config_key_found == False:
        # If `config` does not currently contain `config_key`, add it. Inherit for good measure.
        new_config[config_key] = '$(inherited) ' + other_linker_flags

    return new_config




def library_configs():
    lib_specific_config = {
        "SWIFT_WHOLE_MODULE_OPTIMIZATION": "YES",
        "SKIP_INSTALL": "YES",
    }

    library_config = merge_dict(SHARED_CONFIGS, lib_specific_config)
    configs = {
        "Debug": library_config,
        "Profile": library_config,
        "Release": lib_specific_config
    }
    return configs

def app_binary_configs(name):
    binary_specific_config = {
        "ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES": "YES",
        "DEVELOPMENT_LANGUAGE": "en",
        "PRODUCT_BUNDLE_IDENTIFIER": bundle_identifier(name),
    }
    binary_config = merge_dict(SHARED_CONFIGS, binary_specific_config)
#    binary_config = config_with_updated_linker_flags(binary_config, ALL_LOAD_LINKER_FLAG)
    return {
        "Debug": binary_config,
        "Profile": binary_config,
        "Release": binary_config
    }

