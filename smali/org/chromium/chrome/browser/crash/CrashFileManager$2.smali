.class Lorg/chromium/chrome/browser/crash/CrashFileManager$2;
.super Ljava/lang/Object;
.source "CrashFileManager.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/crash/CrashFileManager;

.field final synthetic val$pattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/crash/CrashFileManager;Ljava/util/regex/Pattern;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lorg/chromium/chrome/browser/crash/CrashFileManager$2;->this$0:Lorg/chromium/chrome/browser/crash/CrashFileManager;

    iput-object p2, p0, Lorg/chromium/chrome/browser/crash/CrashFileManager$2;->val$pattern:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lorg/chromium/chrome/browser/crash/CrashFileManager$2;->val$pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 184
    invoke-static {p2}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->readAttemptNumber(Ljava/lang/String;)I

    move-result v1

    .line 185
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
