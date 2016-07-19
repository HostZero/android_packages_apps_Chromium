.class Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;
.super Ljava/lang/Object;
.source "ForeignSessionHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativeForeignSessionHelper:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {p1}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->mNativeForeignSessionHelper:J

    .line 125
    return-void
.end method

.method private static native nativeDeleteForeignSession(JLjava/lang/String;)V
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetForeignSessions(JLjava/util/List;)Z
.end method

.method private static native nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J
.end method

.method private static native nativeIsTabSyncEnabled(J)Z
.end method

.method private static native nativeOpenForeignSessionTab(JLorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;II)Z
.end method

.method private static native nativeSetOnForeignSessionCallback(JLorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionCallback;)V
.end method

.method private static native nativeTriggerSessionSync(J)V
.end method

.method private static pushSession(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJ)Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;
    .locals 8

    .prologue
    .line 99
    new-instance v0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;-><init>(Ljava/lang/String;Ljava/lang/String;IJLorg/chromium/chrome/browser/ntp/ForeignSessionHelper$1;)V

    .line 100
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-object v0
.end method

.method private static pushTab(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 9

    .prologue
    .line 115
    new-instance v1, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;-><init>(Ljava/lang/String;Ljava/lang/String;JILorg/chromium/chrome/browser/ntp/ForeignSessionHelper$1;)V

    .line 116
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;->tabs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method private static pushWindow(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;JI)Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;
    .locals 3

    .prologue
    .line 107
    new-instance v0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;-><init>(JILorg/chromium/chrome/browser/ntp/ForeignSessionHelper$1;)V

    .line 108
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;->windows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-object v0
.end method


# virtual methods
.method deleteForeignSession(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;)V
    .locals 3

    .prologue
    .line 194
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->mNativeForeignSessionHelper:J

    iget-object v2, p1, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;->tag:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->nativeDeleteForeignSession(JLjava/lang/String;)V

    .line 195
    return-void
.end method

.method destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 131
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->mNativeForeignSessionHelper:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 132
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->mNativeForeignSessionHelper:J

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->nativeDestroy(J)V

    .line 133
    iput-wide v2, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->mNativeForeignSessionHelper:J

    .line 134
    return-void
.end method

.method getForeignSessions()Ljava/util/List;
    .locals 4

    .prologue
    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    iget-wide v2, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->mNativeForeignSessionHelper:J

    invoke-static {v2, v3, v0}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->nativeGetForeignSessions(JLjava/util/List;)Z

    move-result v1

    .line 165
    if-nez v1, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 169
    :cond_0
    return-object v0
.end method

.method openForeignSessionTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;I)Z
    .locals 6

    .prologue
    .line 182
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->mNativeForeignSessionHelper:J

    iget-object v3, p2, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;->tag:Ljava/lang/String;

    iget v4, p3, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;->id:I

    move-object v2, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->nativeOpenForeignSessionTab(JLorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method setOnForeignSessionCallback(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionCallback;)V
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->mNativeForeignSessionHelper:J

    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->nativeSetOnForeignSessionCallback(JLorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionCallback;)V

    .line 156
    return-void
.end method

.method triggerSessionSync()V
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->mNativeForeignSessionHelper:J

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->nativeTriggerSessionSync(J)V

    .line 148
    return-void
.end method
