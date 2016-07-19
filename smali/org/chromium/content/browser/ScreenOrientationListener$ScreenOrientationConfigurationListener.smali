.class Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;
.super Ljava/lang/Object;
.source "ScreenOrientationListener.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationListenerBackend;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAccurateCount:I

.field final synthetic this$0:Lorg/chromium/content/browser/ScreenOrientationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lorg/chromium/content/browser/ScreenOrientationListener;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/chromium/content/browser/ScreenOrientationListener;)V
    .locals 1

    .prologue
    .line 87
    iput-object p1, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;->this$0:Lorg/chromium/content/browser/ScreenOrientationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;->mAccurateCount:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/browser/ScreenOrientationListener;Lorg/chromium/content/browser/ScreenOrientationListener$1;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;-><init>(Lorg/chromium/content/browser/ScreenOrientationListener;)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;)I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;->mAccurateCount:I

    return v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;->this$0:Lorg/chromium/content/browser/ScreenOrientationListener;

    # invokes: Lorg/chromium/content/browser/ScreenOrientationListener;->notifyObservers()V
    invoke-static {v0}, Lorg/chromium/content/browser/ScreenOrientationListener;->access$200(Lorg/chromium/content/browser/ScreenOrientationListener;)V

    .line 139
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public startAccurateListening()V
    .locals 4

    .prologue
    .line 108
    iget v0, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;->mAccurateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;->mAccurateCount:I

    .line 110
    iget v0, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;->mAccurateCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener$1;

    invoke-direct {v0, p0, p0}, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener$1;-><init>(Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public startListening()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;->this$0:Lorg/chromium/content/browser/ScreenOrientationListener;

    # getter for: Lorg/chromium/content/browser/ScreenOrientationListener;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/content/browser/ScreenOrientationListener;->access$000(Lorg/chromium/content/browser/ScreenOrientationListener;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 99
    return-void
.end method

.method public stopAccurateListening()V
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;->mAccurateCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;->mAccurateCount:I

    .line 131
    sget-boolean v0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;->mAccurateCount:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 132
    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;->this$0:Lorg/chromium/content/browser/ScreenOrientationListener;

    # getter for: Lorg/chromium/content/browser/ScreenOrientationListener;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/content/browser/ScreenOrientationListener;->access$000(Lorg/chromium/content/browser/ScreenOrientationListener;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 104
    return-void
.end method
