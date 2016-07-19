.class Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge$1;
.super Ljava/lang/Object;
.source "HistoryReportJniBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge$1;->this$0:Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge$1;->this$0:Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;

    # invokes: Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;->nativeInit()J
    invoke-static {v1}, Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;->access$100(Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;)J

    move-result-wide v2

    # setter for: Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;->mNativeHistoryReportJniBridge:J
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;->access$002(Lorg/chromium/chrome/browser/historyreport/HistoryReportJniBridge;J)J

    .line 39
    return-void
.end method
