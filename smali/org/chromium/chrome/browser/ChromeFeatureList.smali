.class public abstract Lorg/chromium/chrome/browser/ChromeFeatureList;
.super Ljava/lang/Object;
.source "ChromeFeatureList.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field public static final NTP_SNIPPETS:Ljava/lang/String; = "NTPSnippets"

.field public static final NTP_TOOLBAR:Ljava/lang/String; = "NTPToolbar"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnabled(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lorg/chromium/chrome/browser/ChromeFeatureList;->nativeIsEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native nativeIsEnabled(Ljava/lang/String;)Z
.end method
