.class public Lorg/chromium/base/library_loader/NativeLibraries;
.super Ljava/lang/Object;
.source "NativeLibraries.java"


# static fields
.field public static final LIBRARIES:[Ljava/lang/String;

.field public static sEnableLinkerTests:Z

.field public static sUseLibraryInZipFile:Z

.field public static sUseLinker:Z

.field static sVersionNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    sput-boolean v3, Lorg/chromium/base/library_loader/NativeLibraries;->sUseLinker:Z

    .line 12
    sput-boolean v2, Lorg/chromium/base/library_loader/NativeLibraries;->sUseLibraryInZipFile:Z

    .line 13
    sput-boolean v2, Lorg/chromium/base/library_loader/NativeLibraries;->sEnableLinkerTests:Z

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "chrome_public"

    aput-object v1, v0, v2

    const-string/jumbo v1, "chromium_android_linker"

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/base/library_loader/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "51.0.2684.0"

    sput-object v0, Lorg/chromium/base/library_loader/NativeLibraries;->sVersionNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
