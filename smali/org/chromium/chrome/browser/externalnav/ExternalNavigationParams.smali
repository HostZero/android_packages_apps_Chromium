.class public Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;
.super Ljava/lang/Object;
.source "ExternalNavigationParams.java"


# instance fields
.field private final mApplicationMustBeInForeground:Z

.field private final mHasUserGesture:Z

.field private final mIsBackgroundTabNavigation:Z

.field private final mIsIncognito:Z

.field private final mIsMainFrame:Z

.field private final mIsRedirect:Z

.field private final mOpenInNewTab:Z

.field private final mPageTransition:I

.field private final mRedirectHandler:Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

.field private final mReferrerUrl:Ljava/lang/String;

.field private final mShouldCloseContentsOnOverrideUrlLoadingAndLaunchIntent:Z

.field private final mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLjava/lang/String;IZZLorg/chromium/chrome/browser/tab/TabRedirectHandler;Lorg/chromium/chrome/browser/tab/Tab;ZZZZZ)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mUrl:Ljava/lang/String;

    .line 61
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mIsIncognito:Z

    .line 62
    iput p4, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mPageTransition:I

    .line 63
    iput-object p3, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mReferrerUrl:Ljava/lang/String;

    .line 64
    iput-boolean p5, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mIsRedirect:Z

    .line 65
    iput-boolean p6, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mApplicationMustBeInForeground:Z

    .line 66
    iput-object p7, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mRedirectHandler:Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    .line 67
    iput-object p8, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 68
    iput-boolean p9, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mOpenInNewTab:Z

    .line 69
    iput-boolean p10, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mIsBackgroundTabNavigation:Z

    .line 70
    iput-boolean p11, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mIsMainFrame:Z

    .line 71
    iput-boolean p12, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mHasUserGesture:Z

    .line 72
    iput-boolean p13, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mShouldCloseContentsOnOverrideUrlLoadingAndLaunchIntent:Z

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;IZZLorg/chromium/chrome/browser/tab/TabRedirectHandler;Lorg/chromium/chrome/browser/tab/Tab;ZZZZZLorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p13}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;-><init>(Ljava/lang/String;ZLjava/lang/String;IZZLorg/chromium/chrome/browser/tab/TabRedirectHandler;Lorg/chromium/chrome/browser/tab/Tab;ZZZZZ)V

    return-void
.end method


# virtual methods
.method public getPageTransition()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mPageTransition:I

    return v0
.end method

.method public getRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mRedirectHandler:Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    return-object v0
.end method

.method public getReferrerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mReferrerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTab()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasUserGesture()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mHasUserGesture:Z

    return v0
.end method

.method public isApplicationMustBeInForeground()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mApplicationMustBeInForeground:Z

    return v0
.end method

.method public isBackgroundTabNavigation()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mIsBackgroundTabNavigation:Z

    return v0
.end method

.method public isIncognito()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mIsIncognito:Z

    return v0
.end method

.method public isMainFrame()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mIsMainFrame:Z

    return v0
.end method

.method public isOpenInNewTab()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mOpenInNewTab:Z

    return v0
.end method

.method public isRedirect()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mIsRedirect:Z

    return v0
.end method

.method public shouldCloseContentsOnOverrideUrlLoadingAndLaunchIntent()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;->mShouldCloseContentsOnOverrideUrlLoadingAndLaunchIntent:Z

    return v0
.end method
