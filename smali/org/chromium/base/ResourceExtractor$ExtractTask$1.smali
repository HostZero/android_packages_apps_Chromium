.class Lorg/chromium/base/ResourceExtractor$ExtractTask$1;
.super Ljava/lang/Object;
.source "ResourceExtractor.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic this$1:Lorg/chromium/base/ResourceExtractor$ExtractTask;


# direct methods
.method constructor <init>(Lorg/chromium/base/ResourceExtractor$ExtractTask;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask$1;->this$1:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 212
    const-string/jumbo v0, "pak_timestamp-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
