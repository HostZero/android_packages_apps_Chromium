.class public abstract Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;
.super Ljava/lang/Object;
.source "TabModelJniBridge.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/TabModel;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sPerceivedTabSwitchLatencyMetricLogged:Z

.field private static sTabSelectionType:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

.field private static sTabSwitchLatencyMetricRequired:Z

.field private static sTabSwitchStartTime:J


# instance fields
.field private final mIsIncognito:Z

.field private mNativeTabModelJniBridge:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->mIsIncognito:Z

    .line 34
    return-void
.end method

.method public static flushActualTabSwitchLatencyMetric()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 178
    sget-wide v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->sTabSwitchStartTime:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->sTabSwitchLatencyMetricRequired:Z

    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->logPerceivedTabSwitchLatencyMetric()V

    .line 180
    invoke-static {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->flushTabSwitchLatencyMetric(Z)V

    .line 182
    sput-wide v4, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->sTabSwitchStartTime:J

    .line 183
    sput-boolean v2, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->sTabSwitchLatencyMetricRequired:Z

    goto :goto_0
.end method

.method private static flushTabSwitchLatencyMetric(Z)V
    .locals 4

    .prologue
    .line 187
    sget-wide v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->sTabSwitchStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->sTabSwitchStartTime:J

    sub-long/2addr v0, v2

    .line 189
    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge$1;->$SwitchMap$org$chromium$chrome$browser$tabmodel$TabModel$TabSelectionType:[I

    sget-object v3, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->sTabSelectionType:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 191
    :pswitch_0
    invoke-static {v0, v1, p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->nativeLogFromCloseMetric(JZ)V

    goto :goto_0

    .line 194
    :pswitch_1
    invoke-static {v0, v1, p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->nativeLogFromExitMetric(JZ)V

    goto :goto_0

    .line 197
    :pswitch_2
    invoke-static {v0, v1, p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->nativeLogFromNewMetric(JZ)V

    goto :goto_0

    .line 200
    :pswitch_3
    invoke-static {v0, v1, p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->nativeLogFromUserMetric(JZ)V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static logPerceivedTabSwitchLatencyMetric()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 168
    sget-wide v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->sTabSwitchStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->sPerceivedTabSwitchLatencyMetricLogged:Z

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-static {v4}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->flushTabSwitchLatencyMetric(Z)V

    .line 171
    sput-boolean v4, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->sPerceivedTabSwitchLatencyMetricLogged:Z

    goto :goto_0
.end method

.method private native nativeBroadcastSessionRestoreComplete(J)V
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeGetProfileAndroid(J)Lorg/chromium/chrome/browser/profiles/Profile;
.end method

.method private native nativeInit(Z)J
.end method

.method private static native nativeLogFromCloseMetric(JZ)V
.end method

.method private static native nativeLogFromExitMetric(JZ)V
.end method

.method private static native nativeLogFromNewMetric(JZ)V
.end method

.method private static native nativeLogFromUserMetric(JZ)V
.end method

.method private native nativeTabAddedToModel(JLorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public static setActualTabSwitchLatencyMetricRequired()V
    .locals 4

    .prologue
    .line 159
    sget-wide v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->sTabSwitchStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->sTabSwitchLatencyMetricRequired:Z

    goto :goto_0
.end method

.method private setIndex(I)V
    .locals 0

    .prologue
    .line 86
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    .line 87
    return-void
.end method

.method public static startTabSwitchLatencyTiming(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->sTabSwitchStartTime:J

    .line 148
    sput-object p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->sTabSelectionType:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    .line 149
    sput-boolean v2, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->sTabSwitchLatencyMetricRequired:Z

    .line 150
    sput-boolean v2, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->sPerceivedTabSwitchLatencyMetricLogged:Z

    .line 151
    return-void
.end method


# virtual methods
.method public broadcastSessionRestoreComplete()V
    .locals 2

    .prologue
    .line 68
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->isNativeInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->mNativeTabModelJniBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->nativeBroadcastSessionRestoreComplete(J)V

    .line 70
    return-void
.end method

.method protected abstract closeTabAt(I)Z
.end method

.method protected createNewTabForDevTools(Ljava/lang/String;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 4

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v0

    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v1, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_CHROME_UI:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/content_public/browser/WebContents;I)Z
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->isNativeInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->mNativeTabModelJniBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->nativeDestroy(J)V

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->mNativeTabModelJniBridge:J

    .line 54
    :cond_0
    return-void
.end method

.method public abstract getCount()I
.end method

.method public getProfile()Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->mNativeTabModelJniBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->nativeGetProfileAndroid(J)Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    return-object v0
.end method

.method public abstract getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;
.end method

.method protected abstract getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;
.end method

.method public abstract index()I
.end method

.method protected initializeNative()V
    .locals 4

    .prologue
    .line 38
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->mNativeTabModelJniBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->mIsIncognito:Z

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->nativeInit(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->mNativeTabModelJniBridge:J

    .line 40
    return-void
.end method

.method public isIncognito()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->mIsIncognito:Z

    return v0
.end method

.method public isNativeInitialized()Z
    .locals 4

    .prologue
    .line 44
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->mNativeTabModelJniBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isSessionRestoreInProgress()Z
.end method

.method protected tabAddedToModel(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->isNativeInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->mNativeTabModelJniBridge:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->nativeTabAddedToModel(JLorg/chromium/chrome/browser/tab/Tab;)V

    .line 78
    :cond_0
    return-void
.end method
