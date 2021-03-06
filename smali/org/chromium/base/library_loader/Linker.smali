.class public abstract Lorg/chromium/base/library_loader/Linker;
.super Ljava/lang/Object;
.source "Linker.java"


# static fields
.field protected static final ADDRESS_SPACE_RESERVATION:I = 0xc000000

.field protected static final BREAKPAD_GUARD_REGION_BYTES:I = 0x1000000

.field public static final BROWSER_SHARED_RELRO_CONFIG:I = 0x1

.field public static final BROWSER_SHARED_RELRO_CONFIG_ALWAYS:I = 0x2

.field public static final BROWSER_SHARED_RELRO_CONFIG_LOW_RAM_ONLY:I = 0x1

.field public static final BROWSER_SHARED_RELRO_CONFIG_NEVER:I = 0x0

.field protected static final DEBUG:Z = false

.field public static final EXTRA_LINKER_SHARED_RELROS:Ljava/lang/String; = "org.chromium.base.android.linker.shared_relros"

.field public static final LINKER_IMPLEMENTATION_LEGACY:I = 0x1

.field public static final LINKER_IMPLEMENTATION_MODERN:I = 0x2

.field public static final MEMORY_DEVICE_CONFIG_INIT:I = 0x0

.field public static final MEMORY_DEVICE_CONFIG_LOW:I = 0x1

.field public static final MEMORY_DEVICE_CONFIG_NORMAL:I = 0x2

.field private static sSingleton:Lorg/chromium/base/library_loader/Linker;

.field private static sSingletonLock:Ljava/lang/Object;


# instance fields
.field protected final mLock:Ljava/lang/Object;

.field protected mMemoryDeviceConfig:I

.field private mTestRunnerClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/library_loader/Linker;->sSingletonLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/base/library_loader/Linker;->mMemoryDeviceConfig:I

    .line 194
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/base/library_loader/Linker;->mTestRunnerClassName:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public static areTestsEnabled()Z
    .locals 1

    .prologue
    .line 261
    sget-boolean v0, Lorg/chromium/base/library_loader/NativeLibraries;->sEnableLinkerTests:Z

    return v0
.end method

.method private static assertForTesting(Z)V
    .locals 1

    .prologue
    .line 269
    if-nez p0, :cond_0

    .line 270
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 272
    :cond_0
    return-void
.end method

.method private static assertLinkerTestsAreEnabled()V
    .locals 2

    .prologue
    .line 283
    sget-boolean v0, Lorg/chromium/base/library_loader/NativeLibraries;->sEnableLinkerTests:Z

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Testing method called in non-testing context"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 286
    :cond_0
    return-void
.end method

.method public static final getInstance()Lorg/chromium/base/library_loader/Linker;
    .locals 4

    .prologue
    .line 240
    sget-object v1, Lorg/chromium/base/library_loader/Linker;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    sget-object v0, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    if-nez v0, :cond_0

    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 243
    invoke-static {}, Lorg/chromium/base/library_loader/ModernLinker;->create()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    .line 247
    :goto_0
    const-string/jumbo v0, "LibraryLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Using linker: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    :cond_0
    sget-object v0, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    monitor-exit v1

    return-object v0

    .line 245
    :cond_1
    invoke-static {}, Lorg/chromium/base/library_loader/LegacyLinker;->create()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isInZipFile()Z
    .locals 1

    .prologue
    .line 599
    sget-boolean v0, Lorg/chromium/base/library_loader/NativeLibraries;->sUseLibraryInZipFile:Z

    return v0
.end method

.method public static isUsed()Z
    .locals 1

    .prologue
    .line 610
    sget-boolean v0, Lorg/chromium/base/library_loader/NativeLibraries;->sUseLinker:Z

    return v0
.end method

.method protected static loadLinkerJniLibrary()V
    .locals 4

    .prologue
    .line 515
    const-string/jumbo v0, "libchromium_android_linker.so"

    .line 520
    :try_start_0
    const-string/jumbo v1, "chromium_android_linker"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v1

    const-string/jumbo v1, "LibraryLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Couldn\'t load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", trying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".cr"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    const-string/jumbo v0, "chromium_android_linker.cr"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static native nativeGetRandomBaseLoadAddress()J
.end method

.method public static final setImplementationForTesting(I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 297
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->assertLinkerTestsAreEnabled()V

    .line 298
    if-eq p0, v2, :cond_0

    if-ne p0, v4, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    .line 301
    sget-object v3, Lorg/chromium/base/library_loader/Linker;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v3

    .line 302
    :try_start_0
    sget-object v0, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    .line 304
    if-ne p0, v4, :cond_4

    .line 305
    invoke-static {}, Lorg/chromium/base/library_loader/ModernLinker;->create()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    .line 309
    :cond_2
    :goto_1
    const-string/jumbo v0, "LibraryLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Forced linker: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    monitor-exit v3

    return-void

    :cond_3
    move v0, v1

    .line 298
    goto :goto_0

    .line 306
    :cond_4
    if-ne p0, v2, :cond_2

    .line 307
    invoke-static {}, Lorg/chromium/base/library_loader/LegacyLinker;->create()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    goto :goto_1

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final setupForTesting(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 407
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->assertLinkerTestsAreEnabled()V

    .line 409
    sget-object v3, Lorg/chromium/base/library_loader/Linker;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v3

    .line 411
    :try_start_0
    sget-object v2, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    if-nez v2, :cond_0

    .line 412
    invoke-static {p0}, Lorg/chromium/base/library_loader/Linker;->setImplementationForTesting(I)V

    .line 413
    sget-object v0, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    invoke-virtual {v0, p1}, Lorg/chromium/base/library_loader/Linker;->setTestRunnerClassNameForTesting(Ljava/lang/String;)V

    .line 414
    monitor-exit v3

    .line 425
    :goto_0
    return-void

    .line 418
    :cond_0
    sget-object v2, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    invoke-virtual {v2}, Lorg/chromium/base/library_loader/Linker;->getImplementationForTesting()I

    move-result v2

    if-ne v2, p0, :cond_1

    move v2, v0

    :goto_1
    invoke-static {v2}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    .line 419
    sget-object v2, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    invoke-virtual {v2}, Lorg/chromium/base/library_loader/Linker;->getTestRunnerClassNameForTesting()Ljava/lang/String;

    move-result-object v2

    .line 420
    if-nez p1, :cond_3

    .line 421
    if-nez v2, :cond_2

    :goto_2
    invoke-static {v0}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    .line 425
    :goto_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v2, v1

    .line 418
    goto :goto_1

    :cond_2
    move v0, v1

    .line 421
    goto :goto_2

    .line 423
    :cond_3
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method protected closeLibInfoMap(Ljava/util/HashMap;)V
    .locals 2

    .prologue
    .line 811
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 812
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/Linker$LibInfo;->close()V

    goto :goto_0

    .line 814
    :cond_0
    return-void
.end method

.method protected createBundleFromLibInfoMap(Ljava/util/HashMap;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 792
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 793
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 794
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 796
    :cond_0
    return-object v2
.end method

.method protected createLibInfoMapFromBundle(Landroid/os/Bundle;)Ljava/util/HashMap;
    .locals 4

    .prologue
    .line 801
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 802
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 803
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/library_loader/Linker$LibInfo;

    .line 804
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 806
    :cond_0
    return-object v2
.end method

.method public abstract disableSharedRelros()V
.end method

.method public abstract finishLibraryLoad()V
.end method

.method public abstract getBaseLoadAddress()J
.end method

.method public final getImplementationForTesting()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 321
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->assertLinkerTestsAreEnabled()V

    .line 323
    sget-object v3, Lorg/chromium/base/library_loader/Linker;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v3

    .line 324
    :try_start_0
    sget-object v2, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    if-ne v2, p0, :cond_0

    move v2, v0

    :goto_0
    invoke-static {v2}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    .line 326
    sget-object v2, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    instance-of v2, v2, Lorg/chromium/base/library_loader/ModernLinker;

    if-eqz v2, :cond_1

    .line 327
    const/4 v0, 0x2

    monitor-exit v3

    .line 334
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 324
    goto :goto_0

    .line 328
    :cond_1
    sget-object v2, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    instance-of v2, v2, Lorg/chromium/base/library_loader/LegacyLinker;

    if-eqz v2, :cond_2

    .line 329
    monitor-exit v3

    goto :goto_1

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 331
    :cond_2
    :try_start_1
    const-string/jumbo v0, "LibraryLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid linker: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/chromium/base/library_loader/Linker;->sSingleton:Lorg/chromium/base/library_loader/Linker;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lorg/chromium/base/Log;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    .line 334
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_1
.end method

.method protected getRandomBaseLoadAddress()J
    .locals 2

    .prologue
    .line 548
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->nativeGetRandomBaseLoadAddress()J

    move-result-wide v0

    .line 552
    return-wide v0
.end method

.method public abstract getSharedRelros()Landroid/os/Bundle;
.end method

.method public final getTestRunnerClassNameForTesting()Ljava/lang/String;
    .locals 2

    .prologue
    .line 385
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->assertLinkerTestsAreEnabled()V

    .line 387
    iget-object v1, p0, Lorg/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 388
    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/library_loader/Linker;->mTestRunnerClassName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract initServiceProcess(J)V
.end method

.method public isChromiumLinkerLibrary(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 506
    const-string/jumbo v0, "chromium_android_linker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "chromium_android_linker.cr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isUsingBrowserSharedRelros()Z
.end method

.method public loadLibrary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/base/library_loader/Linker;->loadLibraryImpl(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 571
    return-void
.end method

.method abstract loadLibraryImpl(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public loadLibraryNoFixedAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/base/library_loader/Linker;->loadLibraryImpl(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 590
    return-void
.end method

.method public abstract prepareLibraryLoad()V
.end method

.method protected final runTestRunnerClassForTesting(IZ)V
    .locals 7

    .prologue
    .line 442
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->assertLinkerTestsAreEnabled()V

    .line 444
    iget-object v2, p0, Lorg/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 445
    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/library_loader/Linker;->mTestRunnerClassName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 446
    const-string/jumbo v0, "LibraryLoader"

    const-string/jumbo v1, "Linker runtime tests not set up for this process"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lorg/chromium/base/Log;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :cond_0
    const/4 v1, 0x0

    .line 454
    :try_start_1
    iget-object v0, p0, Lorg/chromium/base/library_loader/Linker;->mTestRunnerClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/library_loader/Linker$TestRunner;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    :goto_0
    :try_start_2
    invoke-interface {v0, p1, p2}, Lorg/chromium/base/library_loader/Linker$TestRunner;->runChecks(IZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    const-string/jumbo v0, "LibraryLoader"

    const-string/jumbo v1, "Linker runtime tests failed in this process"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lorg/chromium/base/Log;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    .line 465
    :cond_1
    const-string/jumbo v0, "LibraryLoader"

    const-string/jumbo v1, "All linker tests passed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    monitor-exit v2

    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    const-string/jumbo v3, "LibraryLoader"

    const-string/jumbo v4, "Could not instantiate test runner class by name"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    move-object v0, v1

    goto :goto_0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final setTestRunnerClassNameForTesting(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 367
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->assertLinkerTestsAreEnabled()V

    .line 369
    iget-object v1, p0, Lorg/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 370
    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/library_loader/Linker;->mTestRunnerClassName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/chromium/base/library_loader/Linker;->assertForTesting(Z)V

    .line 371
    iput-object p1, p0, Lorg/chromium/base/library_loader/Linker;->mTestRunnerClassName:Ljava/lang/String;

    .line 372
    monitor-exit v1

    return-void

    .line 370
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract useSharedRelros(Landroid/os/Bundle;)V
.end method
