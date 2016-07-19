.class public Lorg/chromium/chrome/browser/historyreport/DeltaFileEntry;
.super Ljava/lang/Object;
.source "DeltaFileEntry.java"


# instance fields
.field public final id:Ljava/lang/String;

.field public final indexedUrl:Ljava/lang/String;

.field public final score:I

.field public final seqNo:J

.field public final title:Ljava/lang/String;

.field public final type:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lorg/chromium/chrome/browser/historyreport/DeltaFileEntry;->seqNo:J

    .line 48
    iput-object p3, p0, Lorg/chromium/chrome/browser/historyreport/DeltaFileEntry;->type:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lorg/chromium/chrome/browser/historyreport/DeltaFileEntry;->id:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lorg/chromium/chrome/browser/historyreport/DeltaFileEntry;->url:Ljava/lang/String;

    .line 51
    iput p6, p0, Lorg/chromium/chrome/browser/historyreport/DeltaFileEntry;->score:I

    .line 52
    iput-object p7, p0, Lorg/chromium/chrome/browser/historyreport/DeltaFileEntry;->title:Ljava/lang/String;

    .line 53
    iput-object p8, p0, Lorg/chromium/chrome/browser/historyreport/DeltaFileEntry;->indexedUrl:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeltaFileEntry["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/chromium/chrome/browser/historyreport/DeltaFileEntry;->seqNo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/historyreport/DeltaFileEntry;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/historyreport/DeltaFileEntry;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/historyreport/DeltaFileEntry;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/historyreport/DeltaFileEntry;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
