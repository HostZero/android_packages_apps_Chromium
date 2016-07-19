.class public Lorg/chromium/base/FieldTrialList;
.super Ljava/lang/Object;
.source "FieldTrialList.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findFullName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-static {p0}, Lorg/chromium/base/FieldTrialList;->nativeFindFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeFindFullName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeTrialExists(Ljava/lang/String;)Z
.end method
