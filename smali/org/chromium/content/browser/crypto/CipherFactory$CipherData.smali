.class Lorg/chromium/content/browser/crypto/CipherFactory$CipherData;
.super Ljava/lang/Object;
.source "CipherFactory.java"


# instance fields
.field public final iv:[B

.field public final key:Ljava/security/Key;


# direct methods
.method public constructor <init>(Ljava/security/Key;[B)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/chromium/content/browser/crypto/CipherFactory$CipherData;->key:Ljava/security/Key;

    .line 76
    iput-object p2, p0, Lorg/chromium/content/browser/crypto/CipherFactory$CipherData;->iv:[B

    .line 77
    return-void
.end method