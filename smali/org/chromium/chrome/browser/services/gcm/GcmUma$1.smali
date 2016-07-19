.class final Lorg/chromium/chrome/browser/services/gcm/GcmUma$1;
.super Ljava/lang/Object;
.source "GcmUma.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$value:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lorg/chromium/chrome/browser/services/gcm/GcmUma$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 29
    const-string/jumbo v0, "Invalidations.GCMUpstreamRequest"

    iget v1, p0, Lorg/chromium/chrome/browser/services/gcm/GcmUma$1;->val$value:I

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 31
    return-void
.end method
