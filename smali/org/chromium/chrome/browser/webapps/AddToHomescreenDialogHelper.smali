.class public Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;
.super Ljava/lang/Object;
.source "AddToHomescreenDialogHelper.java"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mIsInitialized:Z

.field private mNativeAddToHomescreenDialogHelper:J

.field private mObserver:Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper$Observer;

.field private final mTab:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->mAppContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 38
    return-void
.end method

.method private native nativeAddShortcut(JLjava/lang/String;)V
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeInitialize(Lorg/chromium/content_public/browser/WebContents;)J
.end method

.method private onIconAvailable(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->mObserver:Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper$Observer;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper$Observer;->onIconAvailable(Landroid/graphics/Bitmap;)V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->mIsInitialized:Z

    .line 78
    return-void
.end method

.method private onUserTitleAvailable(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->mObserver:Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper$Observer;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper$Observer;->onUserTitleAvailable(Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public addShortcut(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->mNativeAddToHomescreenDialogHelper:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->nativeAddShortcut(JLjava/lang/String;)V

    .line 86
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->mNativeAddToHomescreenDialogHelper:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->nativeDestroy(J)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->mObserver:Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper$Observer;

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->mNativeAddToHomescreenDialogHelper:J

    .line 67
    return-void
.end method

.method public initialize(Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper$Observer;)V
    .locals 2

    .prologue
    .line 46
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->mObserver:Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper$Observer;

    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->nativeInitialize(Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->mNativeAddToHomescreenDialogHelper:J

    .line 48
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->mIsInitialized:Z

    return v0
.end method
