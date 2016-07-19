.class Lcom/google/ipc/invalidation/external/client/types/BytesFormatter;
.super Ljava/lang/Object;
.source "BytesFormatter.java"


# static fields
.field private static final CHAR_OCTAL_STRINGS1:[C

.field private static final CHAR_OCTAL_STRINGS2:[C

.field private static final CHAR_OCTAL_STRINGS3:[C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/16 v1, 0x100

    .line 36
    new-array v0, v1, [C

    sput-object v0, Lcom/google/ipc/invalidation/external/client/types/BytesFormatter;->CHAR_OCTAL_STRINGS1:[C

    .line 37
    new-array v0, v1, [C

    sput-object v0, Lcom/google/ipc/invalidation/external/client/types/BytesFormatter;->CHAR_OCTAL_STRINGS2:[C

    .line 38
    new-array v0, v1, [C

    sput-object v0, Lcom/google/ipc/invalidation/external/client/types/BytesFormatter;->CHAR_OCTAL_STRINGS3:[C

    .line 43
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/google/ipc/invalidation/external/client/types/BytesFormatter;->CHAR_OCTAL_STRINGS1:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Bad integer value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    :goto_1
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Bad padding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "00"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 61
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\\"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    sget-object v2, Lcom/google/ipc/invalidation/external/client/types/BytesFormatter;->CHAR_OCTAL_STRINGS1:[C

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v2, v0

    .line 63
    sget-object v2, Lcom/google/ipc/invalidation/external/client/types/BytesFormatter;->CHAR_OCTAL_STRINGS2:[C

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v2, v0

    .line 64
    sget-object v2, Lcom/google/ipc/invalidation/external/client/types/BytesFormatter;->CHAR_OCTAL_STRINGS3:[C

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v2, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 66
    :cond_1
    return-void

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x5c

    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    .line 73
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 74
    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-byte v0, p0, v1

    .line 75
    sparse-switch v0, :sswitch_data_0

    .line 82
    const/16 v4, 0x20

    if-lt v0, v4, :cond_1

    const/16 v4, 0x7f

    if-ge v0, v4, :cond_1

    const/16 v4, 0x27

    if-eq v0, v4, :cond_1

    .line 83
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 76
    :sswitch_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x6e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 77
    :sswitch_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x72

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 78
    :sswitch_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x74

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 79
    :sswitch_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 80
    :sswitch_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 86
    :cond_1
    if-gez v0, :cond_2

    .line 87
    add-int/lit16 v0, v0, 0x100

    .line 89
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    sget-object v4, Lcom/google/ipc/invalidation/external/client/types/BytesFormatter;->CHAR_OCTAL_STRINGS1:[C

    aget-char v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    sget-object v4, Lcom/google/ipc/invalidation/external/client/types/BytesFormatter;->CHAR_OCTAL_STRINGS2:[C

    aget-char v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    sget-object v4, Lcom/google/ipc/invalidation/external/client/types/BytesFormatter;->CHAR_OCTAL_STRINGS3:[C

    aget-char v0, v4, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 96
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_3
        0x5c -> :sswitch_4
    .end sparse-switch
.end method
