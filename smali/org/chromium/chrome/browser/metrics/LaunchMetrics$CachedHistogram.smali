.class abstract Lorg/chromium/chrome/browser/metrics/LaunchMetrics$CachedHistogram;
.super Ljava/lang/Object;
.source "LaunchMetrics.java"


# static fields
.field private static final sEvents:Ljava/util/List;


# instance fields
.field protected mHistogramName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$CachedHistogram;->sEvents:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$CachedHistogram;->mHistogramName:Ljava/lang/String;

    .line 39
    sget-object v0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$CachedHistogram;->sEvents:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$CachedHistogram;->sEvents:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected abstract commitAndClear()V
.end method
