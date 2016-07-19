.class public Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;
.super Ljava/lang/Object;
.source "MediaSessionTabHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mControlsListener:Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;

.field private mFallbackMetadata:Lorg/chromium/content_public/common/MediaMetadata;

.field private mNotificationInfoBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

.field private mPreviousVolumeControlStream:I

.field private mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field private final mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mPreviousVolumeControlStream:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mNotificationInfoBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    .line 43
    new-instance v0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$1;-><init>(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mControlsListener:Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;

    .line 154
    new-instance v0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;-><init>(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    .line 186
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 187
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 188
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->setWebContents(Lorg/chromium/content_public/browser/WebContents;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->getActivityFromTab(Lorg/chromium/chrome/browser/tab/Tab;)Landroid/app/Activity;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mPreviousVolumeControlStream:I

    .line 194
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    return-object v0
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    return-object p1
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/content_public/common/MediaMetadata;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mFallbackMetadata:Lorg/chromium/content_public/common/MediaMetadata;

    return-object v0
.end method

.method static synthetic access$202(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;Lorg/chromium/content_public/common/MediaMetadata;)Lorg/chromium/content_public/common/MediaMetadata;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mFallbackMetadata:Lorg/chromium/content_public/common/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->sanitizeMediaTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mNotificationInfoBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    return-object v0
.end method

.method static synthetic access$402(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mNotificationInfoBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    return-object p1
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mControlsListener:Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;Lorg/chromium/chrome/browser/tab/Tab;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->getActivityFromTab(Lorg/chromium/chrome/browser/tab/Tab;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->setWebContents(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->cleanupWebContents()V

    return-void
.end method

.method private cleanupWebContents()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/WebContentsObserver;->destroy()V

    .line 150
    :cond_0
    iput-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    .line 151
    iput-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 152
    return-void
.end method

.method public static convertMediaActionSourceToUMA(I)I
    .locals 1

    .prologue
    .line 224
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 233
    :goto_0
    return v0

    .line 226
    :cond_0
    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_1

    .line 227
    const/4 v0, 0x1

    goto :goto_0

    .line 228
    :cond_1
    const/16 v0, 0x3ea

    if-ne p0, v0, :cond_2

    .line 229
    const/4 v0, 0x2

    goto :goto_0

    .line 232
    :cond_2
    sget-boolean v0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 233
    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static createForTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 202
    return-void
.end method

.method private createWebContentsObserver(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/WebContentsObserver;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;-><init>(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;Lorg/chromium/content_public/browser/WebContents;)V

    return-object v0
.end method

.method private getActivityFromTab(Lorg/chromium/chrome/browser/tab/Tab;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    .line 238
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 240
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method private sanitizeMediaTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string/jumbo v1, "\u25b6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private setWebContents(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-ne v0, p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->cleanupWebContents()V

    .line 144
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->createWebContentsObserver(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/WebContentsObserver;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    goto :goto_0
.end method


# virtual methods
.method hideNotification()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    sget v1, Lorg/chromium/chrome/R$id;->media_playback_notification:I

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->hide(II)V

    .line 74
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->getActivityFromTab(Lorg/chromium/chrome/browser/tab/Tab;)Landroid/app/Activity;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    iget v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mPreviousVolumeControlStream:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 78
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mNotificationInfoBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    goto :goto_0
.end method
