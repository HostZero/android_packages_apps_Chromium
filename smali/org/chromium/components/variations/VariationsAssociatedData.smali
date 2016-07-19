.class public final Lorg/chromium/components/variations/VariationsAssociatedData;
.super Ljava/lang/Object;
.source "VariationsAssociatedData.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getFeedbackMap()Ljava/util/HashMap;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    const-string/jumbo v1, "Chrome Variations"

    invoke-static {}, Lorg/chromium/components/variations/VariationsAssociatedData;->nativeGetFeedbackVariations()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-object v0
.end method

.method public static getVariationParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-static {p0, p1}, Lorg/chromium/components/variations/VariationsAssociatedData;->nativeGetVariationParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeGetFeedbackVariations()Ljava/lang/String;
.end method

.method private static native nativeGetVariationParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
