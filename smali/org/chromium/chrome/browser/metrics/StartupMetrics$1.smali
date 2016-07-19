.class Lorg/chromium/chrome/browser/metrics/StartupMetrics$1;
.super Ljava/lang/Object;
.source "StartupMetrics.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/metrics/StartupMetrics;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/metrics/StartupMetrics;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics$1;->this$0:Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics$1;->this$0:Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->recordHistogram(Z)V

    .line 143
    return-void
.end method
