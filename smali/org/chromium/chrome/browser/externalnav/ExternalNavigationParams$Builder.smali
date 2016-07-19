.class public Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;
.super Ljava/lang/Object;
.source "ExternalNavigationParams.java"


# instance fields
.field private mApplicationMustBeInForeground:Z

.field private mHasUserGesture:Z

.field private mIsBackgroundTabNavigation:Z

.field private mIsIncognito:Z

.field private mIsMainFrame:Z

.field private mIsRedirect:Z

.field private mOpenInNewTab:Z

.field private mPageTransition:I

.field private mRedirectHandler:Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

.field private mReferrerUrl:Ljava/lang/String;

.field private mShouldCloseContentsOnOverrideUrlLoadingAndLaunchIntent:Z

.field private mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mUrl:Ljava/lang/String;

    .line 192
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mIsIncognito:Z

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mUrl:Ljava/lang/String;

    .line 198
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mIsIncognito:Z

    .line 199
    iput-object p3, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mReferrerUrl:Ljava/lang/String;

    .line 200
    iput p4, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mPageTransition:I

    .line 201
    iput-boolean p5, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mIsRedirect:Z

    .line 202
    return-void
.end method


# virtual methods
.method public build()Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;
    .locals 15

    .prologue
    .line 256
    new-instance v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;

    iget-object v1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mUrl:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mIsIncognito:Z

    iget-object v3, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mReferrerUrl:Ljava/lang/String;

    iget v4, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mPageTransition:I

    iget-boolean v5, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mIsRedirect:Z

    iget-boolean v6, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mApplicationMustBeInForeground:Z

    iget-object v7, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mRedirectHandler:Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    iget-object v8, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-boolean v9, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mOpenInNewTab:Z

    iget-boolean v10, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mIsBackgroundTabNavigation:Z

    iget-boolean v11, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mIsMainFrame:Z

    iget-boolean v12, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mHasUserGesture:Z

    iget-boolean v13, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mShouldCloseContentsOnOverrideUrlLoadingAndLaunchIntent:Z

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;-><init>(Ljava/lang/String;ZLjava/lang/String;IZZLorg/chromium/chrome/browser/tab/TabRedirectHandler;Lorg/chromium/chrome/browser/tab/Tab;ZZZZZLorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$1;)V

    return-object v0
.end method

.method public setApplicationMustBeInForeground(Z)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;
    .locals 0

    .prologue
    .line 206
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mApplicationMustBeInForeground:Z

    .line 207
    return-object p0
.end method

.method public setHasUserGesture(Z)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;
    .locals 0

    .prologue
    .line 242
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mHasUserGesture:Z

    .line 243
    return-object p0
.end method

.method public setIsBackgroundTabNavigation(Z)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;
    .locals 0

    .prologue
    .line 230
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mIsBackgroundTabNavigation:Z

    .line 231
    return-object p0
.end method

.method public setIsMainFrame(Z)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;
    .locals 0

    .prologue
    .line 236
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mIsMainFrame:Z

    .line 237
    return-object p0
.end method

.method public setOpenInNewTab(Z)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;
    .locals 0

    .prologue
    .line 224
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mOpenInNewTab:Z

    .line 225
    return-object p0
.end method

.method public setRedirectHandler(Lorg/chromium/chrome/browser/tab/TabRedirectHandler;)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mRedirectHandler:Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    .line 213
    return-object p0
.end method

.method public setShouldCloseContentsOnOverrideUrlLoadingAndLaunchIntent(Z)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;
    .locals 0

    .prologue
    .line 250
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mShouldCloseContentsOnOverrideUrlLoadingAndLaunchIntent:Z

    .line 251
    return-object p0
.end method

.method public setTab(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 219
    return-object p0
.end method
