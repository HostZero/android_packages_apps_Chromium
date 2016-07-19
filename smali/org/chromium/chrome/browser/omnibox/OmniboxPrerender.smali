.class public Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;
.super Ljava/lang/Object;
.source "OmniboxPrerender.java"


# instance fields
.field private mNativeOmniboxPrerender:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;->mNativeOmniboxPrerender:J

    .line 26
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;->mNativeOmniboxPrerender:J

    .line 27
    return-void
.end method

.method private native nativeClear(JLorg/chromium/chrome/browser/profiles/Profile;)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeInitializeForProfile(JLorg/chromium/chrome/browser/profiles/Profile;)V
.end method

.method private native nativePrerenderMaybe(JLjava/lang/String;Ljava/lang/String;JLorg/chromium/chrome/browser/profiles/Profile;Lorg/chromium/chrome/browser/tab/Tab;)V
.end method


# virtual methods
.method public clear(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;->mNativeOmniboxPrerender:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;->nativeClear(JLorg/chromium/chrome/browser/profiles/Profile;)V

    .line 37
    return-void
.end method

.method public initializeForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;->mNativeOmniboxPrerender:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;->nativeInitializeForProfile(JLorg/chromium/chrome/browser/profiles/Profile;)V

    .line 48
    return-void
.end method

.method public prerenderMaybe(Ljava/lang/String;Ljava/lang/String;JLorg/chromium/chrome/browser/profiles/Profile;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 11

    .prologue
    .line 63
    iget-wide v2, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;->mNativeOmniboxPrerender:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lorg/chromium/chrome/browser/omnibox/OmniboxPrerender;->nativePrerenderMaybe(JLjava/lang/String;Ljava/lang/String;JLorg/chromium/chrome/browser/profiles/Profile;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 65
    return-void
.end method
