.class public abstract Lorg/chromium/content/common/ContentSwitches;
.super Ljava/lang/Object;
.source "ContentSwitches.java"


# static fields
.field public static final ACCESSIBILITY_JAVASCRIPT_URL:Ljava/lang/String; = "accessibility-js-url"

.field public static final ADD_OFFICIAL_COMMAND_LINE:Ljava/lang/String; = "add-official-command-line"

.field public static final DISABLE_GESTURE_REQUIREMENT_FOR_MEDIA_PLAYBACK:Ljava/lang/String; = "disable-gesture-requirement-for-media-playback"

.field public static final DISABLE_GESTURE_REQUIREMENT_FOR_PRESENTATION:Ljava/lang/String; = "disable-gesture-requirement-for-presentation"

.field public static final DISABLE_POPUP_BLOCKING:Ljava/lang/String; = "disable-popup-blocking"

.field public static final ENABLE_CREDENTIAL_MANAGER_API:Ljava/lang/String; = "enable-credential-manager-api"

.field public static final ENABLE_INSTANT_EXTENDED_API:Ljava/lang/String; = "enable-instant-extended-api"

.field public static final ENABLE_TEST_INTENTS:Ljava/lang/String; = "enable-test-intents"

.field public static final ENABLE_TOUCH_HOVER:Ljava/lang/String; = "enable-touch-hover"

.field public static final FORCE_DEVICE_SCALE_FACTOR:Ljava/lang/String; = "force-device-scale-factor"

.field public static final IN_PROCESS_GPU:Ljava/lang/String; = "in-process-gpu"

.field public static final IPC_SYNC_COMPOSITING:Ljava/lang/String; = "ipc-sync-compositing"

.field public static final LOG_FPS:Ljava/lang/String; = "log-fps"

.field public static final NETWORK_COUNTRY_ISO:Ljava/lang/String; = "network-country-iso"

.field public static final RENDER_PROCESS_LIMIT:Ljava/lang/String; = "renderer-process-limit"

.field public static final RUNNING_PERFORMANCE_BENCHMARK:Ljava/lang/String; = "running-performance-benchmark"

.field public static final RUN_LAYOUT_TEST:Ljava/lang/String; = "run-layout-test"

.field public static final SWITCH_DOWNLOAD_PROCESS:Ljava/lang/String; = "download"

.field public static final SWITCH_GPU_PROCESS:Ljava/lang/String; = "gpu-process"

.field public static final SWITCH_PROCESS_TYPE:Ljava/lang/String; = "type"

.field public static final SWITCH_RENDERER_PROCESS:Ljava/lang/String; = "renderer"

.field public static final SWITCH_UTILITY_PROCESS:Ljava/lang/String; = "utility"

.field public static final TOP_CONTROLS_HIDE_THRESHOLD:Ljava/lang/String; = "top-controls-hide-threshold"

.field public static final TOP_CONTROLS_SHOW_THRESHOLD:Ljava/lang/String; = "top-controls-show-threshold"

.field public static final USE_MOBILE_UA:Ljava/lang/String; = "use-mobile-user-agent"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 98
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v0

    .line 102
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    array-length v3, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, p0, v1

    .line 104
    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
