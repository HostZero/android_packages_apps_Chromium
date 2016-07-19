.class final Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$1;
.super Landroid/os/AsyncTask;
.source "OfflinePageBridge.java"


# instance fields
.field final synthetic val$bytesName:Ljava/lang/String;

.field final synthetic val$percentageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$1;->val$percentageName:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$1;->val$bytesName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 125
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getFreeSpaceInBytes()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getTotalSpaceInBytes()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 127
    iget-object v1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$1;->val$percentageName:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordPercentageHistogram(Ljava/lang/String;I)V

    .line 128
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getFreeSpaceInBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 129
    iget-object v1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$1;->val$bytesName:Ljava/lang/String;

    const/4 v2, 0x1

    const v3, 0x7a120

    const/16 v4, 0x32

    invoke-static {v1, v0, v2, v3, v4}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomCountHistogram(Ljava/lang/String;IIII)V

    .line 130
    const/4 v0, 0x0

    return-object v0
.end method
