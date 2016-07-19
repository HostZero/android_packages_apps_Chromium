.class Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;
.super Ljava/lang/Object;
.source "NewTabPagePrefs.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativeNewTabPagePrefs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->mNativeNewTabPagePrefs:J

    .line 22
    return-void
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetCurrentlyOpenTabsCollapsed(J)Z
.end method

.method private static native nativeGetForeignSessionCollapsed(JLjava/lang/String;)Z
.end method

.method private static native nativeGetRecentlyClosedTabsCollapsed(J)Z
.end method

.method private static native nativeGetSnapshotDocumentCollapsed(J)Z
.end method

.method private static native nativeGetSyncPromoCollapsed(J)Z
.end method

.method private static native nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J
.end method

.method private static native nativeSetCurrentlyOpenTabsCollapsed(JZ)V
.end method

.method private static native nativeSetForeignSessionCollapsed(JLjava/lang/String;Z)V
.end method

.method private static native nativeSetRecentlyClosedTabsCollapsed(JZ)V
.end method

.method private static native nativeSetSnapshotDocumentCollapsed(JZ)V
.end method

.method private static native nativeSetSyncPromoCollapsed(JZ)V
.end method


# virtual methods
.method destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->mNativeNewTabPagePrefs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->mNativeNewTabPagePrefs:J

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->nativeDestroy(J)V

    .line 30
    iput-wide v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->mNativeNewTabPagePrefs:J

    .line 31
    return-void
.end method

.method getCurrentlyOpenTabsCollapsed()Z
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->mNativeNewTabPagePrefs:J

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->nativeGetCurrentlyOpenTabsCollapsed(J)Z

    move-result v0

    return v0
.end method

.method getForeignSessionCollapsed(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;)Z
    .locals 3

    .prologue
    .line 120
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->mNativeNewTabPagePrefs:J

    iget-object v2, p1, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;->tag:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->nativeGetForeignSessionCollapsed(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method getRecentlyClosedTabsCollapsed()Z
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->mNativeNewTabPagePrefs:J

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->nativeGetRecentlyClosedTabsCollapsed(J)Z

    move-result v0

    return v0
.end method

.method getSyncPromoCollapsed()Z
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->mNativeNewTabPagePrefs:J

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->nativeGetSyncPromoCollapsed(J)Z

    move-result v0

    return v0
.end method

.method setCurrentlyOpenTabsCollapsed(Z)V
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->mNativeNewTabPagePrefs:J

    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->nativeSetCurrentlyOpenTabsCollapsed(JZ)V

    .line 40
    return-void
.end method

.method setForeignSessionCollapsed(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;Z)V
    .locals 3

    .prologue
    .line 111
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->mNativeNewTabPagePrefs:J

    iget-object v2, p1, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;->tag:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->nativeSetForeignSessionCollapsed(JLjava/lang/String;Z)V

    .line 112
    return-void
.end method

.method setRecentlyClosedTabsCollapsed(Z)V
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->mNativeNewTabPagePrefs:J

    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->nativeSetRecentlyClosedTabsCollapsed(JZ)V

    .line 77
    return-void
.end method

.method setSyncPromoCollapsed(Z)V
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->mNativeNewTabPagePrefs:J

    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->nativeSetSyncPromoCollapsed(JZ)V

    .line 95
    return-void
.end method
