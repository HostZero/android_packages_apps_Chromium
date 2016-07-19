.class public Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;
.super Ljava/lang/Object;
.source "DownloadManagerService.java"


# instance fields
.field final mDownloadId:J

.field final mInstallNotifyURI:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-wide p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;->mDownloadId:J

    .line 145
    iput-object p3, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;->mInstallNotifyURI:Ljava/lang/String;

    .line 146
    return-void
.end method

.method static parseOMAEntry(Ljava/lang/String;)Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;
    .locals 4

    .prologue
    .line 157
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 158
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 159
    new-instance v1, Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;-><init>(JLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method generateSharedPrefsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;->mDownloadId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;->mInstallNotifyURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
