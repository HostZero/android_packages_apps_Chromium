.class Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;
.super Ljava/lang/Object;
.source "AsyncInitializationActivity.java"


# instance fields
.field private mPaused:Z

.field private final mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field final synthetic this$0:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;)V
    .locals 1

    .prologue
    .line 431
    iput-object p1, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->this$0:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->mPaused:Z

    .line 458
    new-instance v0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1;-><init>(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$1;)V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;-><init>(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;)V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->onPause()V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;)Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->mPaused:Z

    return v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;)Landroid/view/View;
    .locals 1

    .prologue
    .line 431
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->getDecorView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;)Landroid/view/ViewTreeObserver;
    .locals 1

    .prologue
    .line 431
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    return-object v0
.end method

.method private getDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->this$0:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .locals 1

    .prologue
    .line 439
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    return-object v0
.end method

.method private onPause()V
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->mPaused:Z

    .line 444
    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 447
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->mPaused:Z

    .line 448
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 449
    return-void
.end method

.method public onSetContentView()V
    .locals 2

    .prologue
    .line 452
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 453
    return-void
.end method
