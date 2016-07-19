.class Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;
.super Ljava/lang/Object;
.source "RecentlyClosedBridge.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativeRecentlyClosedTabsBridge:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->mNativeRecentlyClosedTabsBridge:J

    .line 62
    return-void
.end method

.method private native nativeClearRecentlyClosedTabs(J)V
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeGetRecentlyClosedTabs(JLjava/util/List;I)Z
.end method

.method private native nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J
.end method

.method private native nativeOpenRecentlyClosedTab(JLorg/chromium/chrome/browser/tab/Tab;II)Z
.end method

.method private native nativeSetRecentlyClosedCallback(JLorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedCallback;)V
.end method

.method private static pushTab(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$1;)V

    .line 53
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method


# virtual methods
.method clearRecentlyClosedTabs()V
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->mNativeRecentlyClosedTabsBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->nativeClearRecentlyClosedTabs(J)V

    .line 113
    return-void
.end method

.method destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 68
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->mNativeRecentlyClosedTabsBridge:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->mNativeRecentlyClosedTabsBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->nativeDestroy(J)V

    .line 70
    iput-wide v2, p0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->mNativeRecentlyClosedTabsBridge:J

    .line 71
    return-void
.end method

.method getRecentlyClosedTabs(I)Ljava/util/List;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    iget-wide v2, p0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->mNativeRecentlyClosedTabsBridge:J

    invoke-direct {p0, v2, v3, v0, p1}, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->nativeGetRecentlyClosedTabs(JLjava/util/List;I)Z

    move-result v1

    .line 89
    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method openRecentlyClosedTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;I)Z
    .locals 7

    .prologue
    .line 104
    iget-wide v2, p0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->mNativeRecentlyClosedTabsBridge:J

    iget v5, p2, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;->id:I

    move-object v1, p0

    move-object v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->nativeOpenRecentlyClosedTab(JLorg/chromium/chrome/browser/tab/Tab;II)Z

    move-result v0

    return v0
.end method

.method setRecentlyClosedCallback(Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedCallback;)V
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->mNativeRecentlyClosedTabsBridge:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->nativeSetRecentlyClosedCallback(JLorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedCallback;)V

    .line 79
    return-void
.end method
