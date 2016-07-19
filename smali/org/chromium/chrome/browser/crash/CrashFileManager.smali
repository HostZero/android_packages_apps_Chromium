.class public Lorg/chromium/chrome/browser/crash/CrashFileManager;
.super Ljava/lang/Object;
.source "CrashFileManager.java"


# static fields
.field static final CRASH_DUMP_DIR:Ljava/lang/String; = "Crash Reports"

.field static final CRASH_DUMP_LOGFILE:Ljava/lang/String; = "Crash Reports/uploads.log"

.field private static final MINIDUMP_FIRST_TRY_PATTERN:Ljava/util/regex/Pattern;

.field private static final MINIDUMP_MIME_FIRST_TRY_PATTERN:Ljava/util/regex/Pattern;

.field private static final MINIDUMP_PATTERN:Ljava/util/regex/Pattern;

.field private static final TMP_PATTERN:Ljava/util/regex/Pattern;

.field protected static final TMP_SUFFIX:Ljava/lang/String; = ".tmp"

.field private static final UPLOADED_MINIDUMP_PATTERN:Ljava/util/regex/Pattern;

.field protected static final sFileComparator:Ljava/util/Comparator;


# instance fields
.field private final mCacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "\\.dmp([0-9]*)$\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/crash/CrashFileManager;->MINIDUMP_FIRST_TRY_PATTERN:Ljava/util/regex/Pattern;

    .line 36
    const-string/jumbo v0, "\\.dmp([0-9]+)$\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/crash/CrashFileManager;->MINIDUMP_MIME_FIRST_TRY_PATTERN:Ljava/util/regex/Pattern;

    .line 39
    const-string/jumbo v0, "\\.dmp([0-9]*)(\\.try[0-9])?\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/crash/CrashFileManager;->MINIDUMP_PATTERN:Ljava/util/regex/Pattern;

    .line 42
    const-string/jumbo v0, "\\.up([0-9]*)\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/crash/CrashFileManager;->UPLOADED_MINIDUMP_PATTERN:Ljava/util/regex/Pattern;

    .line 51
    const-string/jumbo v0, "\\.tmp\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/crash/CrashFileManager;->TMP_PATTERN:Ljava/util/regex/Pattern;

    .line 59
    new-instance v0, Lorg/chromium/chrome/browser/crash/CrashFileManager$1;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/crash/CrashFileManager$1;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/crash/CrashFileManager;->sFileComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    if-nez p1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Specified context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a directory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    iput-object p1, p0, Lorg/chromium/chrome/browser/crash/CrashFileManager;->mCacheDir:Ljava/io/File;

    .line 145
    return-void
.end method

.method static deleteFile(Ljava/io/File;)Z
    .locals 4

    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 75
    if-nez v0, :cond_0

    .line 76
    const-string/jumbo v1, "CrashFileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to delete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_0
    return v0
.end method

.method public static filenameWithIncrementedAttemptNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    invoke-static {p0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->readAttemptNumber(Ljava/lang/String;)I

    move-result v0

    .line 100
    if-lez v0, :cond_0

    .line 101
    add-int/lit8 v1, v0, 0x1

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ".try"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ".try"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".try1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAllTempFiles()[Ljava/io/File;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lorg/chromium/chrome/browser/crash/CrashFileManager;->TMP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getMatchingFiles(Ljava/util/regex/Pattern;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static isMinidumpMIMEFirstTry(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lorg/chromium/chrome/browser/crash/CrashFileManager;->MINIDUMP_MIME_FIRST_TRY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static readAttemptNumber(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 111
    const-string/jumbo v1, ".try"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 112
    if-ltz v1, :cond_0

    .line 113
    add-int/lit8 v1, v1, 0x4

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 117
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 120
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 122
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static tryIncrementAttemptNumber(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->filenameWithIncrementedAttemptNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tryMarkAsUploaded(Ljava/io/File;)Z
    .locals 4

    .prologue
    .line 130
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\.dmp"

    const-string/jumbo v3, ".up"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cleanOutAllNonFreshMinidumpFiles()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getAllUploadedFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 159
    invoke-static {v4}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->deleteFile(Ljava/io/File;)Z

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getAllTempFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 162
    invoke-static {v3}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->deleteFile(Ljava/io/File;)Z

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 164
    :cond_1
    return-void
.end method

.method public createNewTempFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 202
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getCrashDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getCrashDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    :cond_0
    :goto_0
    return-object v0

    .line 207
    :cond_1
    const-string/jumbo v1, "CrashFileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to delete previous logfile"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getAllMinidumpFiles()[Ljava/io/File;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lorg/chromium/chrome/browser/crash/CrashFileManager;->MINIDUMP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getMatchingFiles(Ljava/util/regex/Pattern;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getAllMinidumpFilesSorted()[Ljava/io/File;
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getAllMinidumpFiles()[Ljava/io/File;

    move-result-object v0

    .line 153
    sget-object v1, Lorg/chromium/chrome/browser/crash/CrashFileManager;->sFileComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 154
    return-object v0
.end method

.method getAllUploadedFiles()[Ljava/io/File;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lorg/chromium/chrome/browser/crash/CrashFileManager;->UPLOADED_MINIDUMP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getMatchingFiles(Ljava/util/regex/Pattern;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getCrashDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 198
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/chromium/chrome/browser/crash/CrashFileManager;->mCacheDir:Ljava/io/File;

    const-string/jumbo v2, "Crash Reports"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getCrashFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getCrashDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getCrashUploadLogFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 219
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/chromium/chrome/browser/crash/CrashFileManager;->mCacheDir:Ljava/io/File;

    const-string/jumbo v2, "Crash Reports/uploads.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getMatchingFiles(Ljava/util/regex/Pattern;)[Ljava/io/File;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 171
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getCrashDirectory()Ljava/io/File;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    const-string/jumbo v1, "CrashFileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " does not exist!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    new-array v0, v3, [Ljava/io/File;

    .line 188
    :goto_0
    return-object v0

    .line 176
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    const-string/jumbo v1, "CrashFileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is not a directory!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    new-array v0, v3, [Ljava/io/File;

    goto :goto_0

    .line 180
    :cond_1
    new-instance v1, Lorg/chromium/chrome/browser/crash/CrashFileManager$2;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/crash/CrashFileManager$2;-><init>(Lorg/chromium/chrome/browser/crash/CrashFileManager;Ljava/util/regex/Pattern;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public getMinidumpWithoutLogcat()[Ljava/io/File;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/chromium/chrome/browser/crash/CrashFileManager;->MINIDUMP_FIRST_TRY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getMatchingFiles(Ljava/util/regex/Pattern;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
