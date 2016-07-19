.class public Lorg/chromium/chrome/browser/document/DocumentWebContentsDelegate;
.super Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;
.source "DocumentWebContentsDelegate.java"


# static fields
.field private static sInstance:Lorg/chromium/chrome/browser/document/DocumentWebContentsDelegate;


# instance fields
.field private mNativePtr:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;-><init>()V

    .line 45
    invoke-direct {p0}, Lorg/chromium/chrome/browser/document/DocumentWebContentsDelegate;->nativeInitialize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/document/DocumentWebContentsDelegate;->mNativePtr:J

    .line 46
    return-void
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/document/DocumentWebContentsDelegate;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/chromium/chrome/browser/document/DocumentWebContentsDelegate;->sInstance:Lorg/chromium/chrome/browser/document/DocumentWebContentsDelegate;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/document/DocumentWebContentsDelegate;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/document/DocumentWebContentsDelegate;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/document/DocumentWebContentsDelegate;->sInstance:Lorg/chromium/chrome/browser/document/DocumentWebContentsDelegate;

    .line 33
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/document/DocumentWebContentsDelegate;->sInstance:Lorg/chromium/chrome/browser/document/DocumentWebContentsDelegate;

    return-object v0
.end method

.method private native nativeAttachContents(JLorg/chromium/content_public/browser/WebContents;)V
.end method

.method private native nativeInitialize()J
.end method


# virtual methods
.method public attachDelegate(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lorg/chromium/chrome/browser/document/DocumentWebContentsDelegate;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/document/DocumentWebContentsDelegate;->nativeAttachContents(JLorg/chromium/content_public/browser/WebContents;)V

    .line 42
    return-void
.end method
