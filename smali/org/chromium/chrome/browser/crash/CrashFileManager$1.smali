.class final Lorg/chromium/chrome/browser/crash/CrashFileManager$1;
.super Ljava/lang/Object;
.source "CrashFileManager.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/io/File;Ljava/io/File;)I
    .locals 4

    .prologue
    .line 62
    if-ne p1, p2, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    .line 64
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 65
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 59
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/crash/CrashFileManager$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
