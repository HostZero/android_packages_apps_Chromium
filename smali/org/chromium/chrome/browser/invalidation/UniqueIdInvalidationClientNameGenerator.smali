.class public Lorg/chromium/chrome/browser/invalidation/UniqueIdInvalidationClientNameGenerator;
.super Ljava/lang/Object;
.source "UniqueIdInvalidationClientNameGenerator.java"

# interfaces
.implements Lorg/chromium/sync/notifier/InvalidationClientNameGenerator;


# instance fields
.field private final mGenerator:Lorg/chromium/chrome/browser/identity/UniqueIdentificationGenerator;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/identity/UniqueIdentificationGenerator;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/chromium/chrome/browser/invalidation/UniqueIdInvalidationClientNameGenerator;->mGenerator:Lorg/chromium/chrome/browser/identity/UniqueIdentificationGenerator;

    .line 41
    return-void
.end method

.method public static doInitializeAndInstallGenerator(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lorg/chromium/chrome/browser/identity/UuidBasedUniqueIdentificationGenerator;

    const-string/jumbo v1, "chromium.invalidations.uuid"

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/identity/UuidBasedUniqueIdentificationGenerator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    new-instance v1, Lorg/chromium/chrome/browser/invalidation/UniqueIdInvalidationClientNameGenerator;

    invoke-direct {v1, v0}, Lorg/chromium/chrome/browser/invalidation/UniqueIdInvalidationClientNameGenerator;-><init>(Lorg/chromium/chrome/browser/identity/UniqueIdentificationGenerator;)V

    .line 34
    invoke-static {}, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;->get()Lorg/chromium/sync/notifier/InvalidationClientNameProvider;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/sync/notifier/InvalidationClientNameProvider;->setPreferredClientNameGenerator(Lorg/chromium/sync/notifier/InvalidationClientNameGenerator;)V

    .line 35
    return-void
.end method


# virtual methods
.method public generateInvalidatorClientName()[B
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/UniqueIdInvalidationClientNameGenerator;->mGenerator:Lorg/chromium/chrome/browser/identity/UniqueIdentificationGenerator;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/identity/UniqueIdentificationGenerator;->getUniqueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
