.class Lorg/chromium/sync/notifier/RandomizedInvalidationClientNameGenerator;
.super Ljava/lang/Object;
.source "RandomizedInvalidationClientNameGenerator.java"

# interfaces
.implements Lorg/chromium/sync/notifier/InvalidationClientNameGenerator;


# static fields
.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/chromium/sync/notifier/RandomizedInvalidationClientNameGenerator;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateInvalidatorClientName()[B
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 36
    new-array v0, v3, [B

    .line 37
    sget-object v1, Lorg/chromium/sync/notifier/RandomizedInvalidationClientNameGenerator;->RANDOM:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 38
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v3, v2}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "BadID"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
