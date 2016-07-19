.class public Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;
.super Ljava/lang/Object;
.source "AsyncDocumentLauncher.java"


# instance fields
.field private final mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

.field private mCurrentRunnable:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mQueue:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegateImpl;

    const-class v1, Lorg/chromium/chrome/browser/document/DocumentActivity;

    const-class v2, Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity;

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegateImpl;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->mQueue:Ljava/util/ArrayList;

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$1;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;)Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;)Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->mCurrentRunnable:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;

    return-object v0
.end method

.method static synthetic access$302(Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;)Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->mCurrentRunnable:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;

    return-object p1
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->mQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;
    .locals 1

    .prologue
    .line 115
    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LazyInitializer;->sInstance:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;
    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LazyInitializer;->access$500()Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public enqueueLaunch(ZILorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;)V
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 128
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;ZILorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;)V

    .line 129
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->mCurrentRunnable:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;

    if-nez v1, :cond_0

    .line 130
    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->mCurrentRunnable:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;

    .line 131
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->mCurrentRunnable:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->launch()V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
