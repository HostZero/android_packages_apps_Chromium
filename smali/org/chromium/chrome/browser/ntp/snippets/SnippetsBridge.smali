.class public Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;
.super Ljava/lang/Object;
.source "SnippetsBridge.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativeSnippetsBridge:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge$SnippetsObserver;)V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;->nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;->mNativeSnippetsBridge:J

    .line 34
    new-instance v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge$1;

    invoke-direct {v0, p0, p2}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge$1;-><init>(Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge$SnippetsObserver;)V

    .line 44
    iget-wide v2, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;->mNativeSnippetsBridge:J

    invoke-direct {p0, v2, v3, v0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;->nativeSetObserver(JLorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge$SnippetsObserver;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;)J
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;->mNativeSnippetsBridge:J

    return-wide v0
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J
.end method

.method private native nativeSetObserver(JLorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge$SnippetsObserver;)V
.end method


# virtual methods
.method destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 48
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;->mNativeSnippetsBridge:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;->mNativeSnippetsBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;->nativeDestroy(J)V

    .line 50
    iput-wide v2, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;->mNativeSnippetsBridge:J

    .line 51
    return-void
.end method
