with open("/usr/local/spoken/devops/build-platform-id") as f:
    platform_id = f.read().strip()


def taskspec(clazz):
    return spec().module('scindo-tasks==0.1').clazz(clazz).endspec()


setup(
    version="1.0",
    group="com.spoken.devops",

    # list all artifacts
    artifacts={
        "centos7-img": spec()
            .chdir_to('/tmp')
            .include("centos7.img")
            .endspec()
    },

    tasks={
        "get_build_num": taskspec('scindotasks.build.GetBuildNumber'),
        "vcsinfo": taskspec('scindotasks.build.VCSInfo'),
        "package": taskspec('scindotasks.build.Package'),
        "publish": taskspec('scindotasks.build.Publish'),
    }
)
