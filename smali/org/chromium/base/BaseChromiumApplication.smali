.class public Lorg/chromium/base/BaseChromiumApplication;
.super Landroid/app/Application;
.source "BaseChromiumApplication.java"


# instance fields
.field private final mShouldInitializeApplicationStatusTracking:Z

.field private mWindowFocusListeners:Lorg/chromium/base/ObserverList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/base/BaseChromiumApplication;-><init>(Z)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 60
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/BaseChromiumApplication;->mWindowFocusListeners:Lorg/chromium/base/ObserverList;

    .line 39
    iput-boolean p1, p0, Lorg/chromium/base/BaseChromiumApplication;->mShouldInitializeApplicationStatusTracking:Z

    .line 40
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/base/BaseChromiumApplication;)Lorg/chromium/base/ObserverList;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/chromium/base/BaseChromiumApplication;->mWindowFocusListeners:Lorg/chromium/base/ObserverList;

    return-object v0
.end method

.method public static initCommandLine(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/BaseChromiumApplication;

    invoke-virtual {v0}, Lorg/chromium/base/BaseChromiumApplication;->initCommandLine()V

    .line 145
    return-void
.end method

.method private startTrackingApplicationStatus()V
    .locals 1

    .prologue
    .line 149
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->initialize(Lorg/chromium/base/BaseChromiumApplication;)V

    .line 150
    new-instance v0, Lorg/chromium/base/BaseChromiumApplication$1;

    invoke-direct {v0, p0}, Lorg/chromium/base/BaseChromiumApplication$1;-><init>(Lorg/chromium/base/BaseChromiumApplication;)V

    invoke-virtual {p0, v0}, Lorg/chromium/base/BaseChromiumApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 213
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 45
    invoke-static {p0}, Lorg/chromium/base/multidex/ChromiumMultiDexInstaller;->install(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public initCommandLine()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 116
    iget-boolean v0, p0, Lorg/chromium/base/BaseChromiumApplication;->mShouldInitializeApplicationStatusTracking:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/base/BaseChromiumApplication;->startTrackingApplicationStatus()V

    .line 117
    :cond_0
    return-void
.end method

.method public registerWindowFocusChangedListener(Lorg/chromium/base/BaseChromiumApplication$WindowFocusChangedListener;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/chromium/base/BaseChromiumApplication;->mWindowFocusListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public unregisterWindowFocusChangedListener(Lorg/chromium/base/BaseChromiumApplication$WindowFocusChangedListener;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/chromium/base/BaseChromiumApplication;->mWindowFocusListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method
