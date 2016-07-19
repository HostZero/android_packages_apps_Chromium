.class public Lorg/chromium/chrome/browser/historyreport/UsageReport;
.super Ljava/lang/Object;
.source "UsageReport.java"


# instance fields
.field public final pageId:Ljava/lang/String;

.field public final reportId:Ljava/lang/String;

.field public final timestampMs:J

.field public final typedVisit:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/chromium/chrome/browser/historyreport/UsageReport;->reportId:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lorg/chromium/chrome/browser/historyreport/UsageReport;->pageId:Ljava/lang/String;

    .line 28
    iput-wide p3, p0, Lorg/chromium/chrome/browser/historyreport/UsageReport;->timestampMs:J

    .line 29
    iput-boolean p5, p0, Lorg/chromium/chrome/browser/historyreport/UsageReport;->typedVisit:Z

    .line 30
    return-void
.end method
