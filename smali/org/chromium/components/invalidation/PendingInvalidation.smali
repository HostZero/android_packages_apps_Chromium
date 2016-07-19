.class public Lorg/chromium/components/invalidation/PendingInvalidation;
.super Ljava/lang/Object;
.source "PendingInvalidation.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final mObjectId:Ljava/lang/String;

.field public final mObjectSource:I

.field public final mPayload:Ljava/lang/String;

.field public final mVersion:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/chromium/components/invalidation/PendingInvalidation;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/components/invalidation/PendingInvalidation;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string/jumbo v0, "objectId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectId:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "objectSource"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectSource:I

    .line 57
    const-string/jumbo v0, "version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mVersion:J

    .line 58
    const-string/jumbo v0, "payload"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mPayload:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectId:Ljava/lang/String;

    .line 45
    iput p2, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectSource:I

    .line 46
    iput-wide p3, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mVersion:J

    .line 47
    iput-object p5, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mPayload:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static createBundle(Ljava/lang/String;IJLjava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    const-string/jumbo v1, "objectId"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v1, "objectSource"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 69
    const-string/jumbo v1, "payload"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-object v0
.end method

.method public static decodeToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 96
    sget-boolean v0, Lorg/chromium/components/invalidation/PendingInvalidation;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 97
    :cond_0
    invoke-static {p0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 100
    :try_start_0
    new-instance v2, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;

    invoke-direct {v2}, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;-><init>()V

    invoke-static {v2, v0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    sget-boolean v2, Lorg/chromium/components/invalidation/PendingInvalidation;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string/jumbo v2, "cr.invalidation"

    const-string/jumbo v3, "Could not parse the serialized invalidations."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 107
    :goto_0
    return-object v0

    .line 106
    :cond_1
    iget-object v2, v0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->objectSource:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->objectSource:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 107
    :cond_3
    iget-object v1, v0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->objectId:Ljava/lang/String;

    iget-object v2, v0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->objectSource:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->version:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->version:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    iget-object v0, v0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->payload:Ljava/lang/String;

    invoke-static {v1, v4, v2, v3, v0}, Lorg/chromium/components/invalidation/PendingInvalidation;->createBundle(Ljava/lang/String;IJLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public encodeToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    sget-boolean v0, Lorg/chromium/components/invalidation/PendingInvalidation;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectSource:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82
    :cond_0
    new-instance v0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;

    invoke-direct {v0}, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;-><init>()V

    .line 83
    iget v1, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->objectSource:Ljava/lang/Integer;

    .line 84
    iget-object v1, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectId:Ljava/lang/String;

    iput-object v1, v0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->objectId:Ljava/lang/String;

    .line 85
    iget-wide v2, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->version:Ljava/lang/Long;

    .line 86
    iget-object v1, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mPayload:Ljava/lang/String;

    iput-object v1, v0, Lorg/chromium/components/invalidation/SerializedInvalidation$Invalidation;->payload:Ljava/lang/String;

    .line 87
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 120
    if-nez p1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    goto :goto_0

    .line 122
    :cond_2
    instance-of v2, p1, Lorg/chromium/components/invalidation/PendingInvalidation;

    if-eqz v2, :cond_0

    .line 123
    check-cast p1, Lorg/chromium/components/invalidation/PendingInvalidation;

    .line 124
    iget v2, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectSource:I

    iget v3, p1, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectSource:I

    if-ne v2, v3, :cond_0

    .line 125
    iget v2, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectSource:I

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 126
    :cond_3
    iget-object v2, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectId:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mPayload:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/components/invalidation/PendingInvalidation;->mPayload:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iget-wide v2, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mVersion:J

    iget-wide v4, p1, Lorg/chromium/components/invalidation/PendingInvalidation;->mVersion:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectSource:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectSource:I

    iget-object v1, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-wide v2, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 112
    iget-object v0, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mPayload:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    .line 113
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "objectSrc:%d,objectId:%s,version:%d,payload(length):%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectSource:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mVersion:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mPayload:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 139
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "objectSrc:%d,objectId:%s,version:%d,payload:%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectSource:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mVersion:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/chromium/components/invalidation/PendingInvalidation;->mPayload:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
