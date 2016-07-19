.class public final enum Lorg/chromium/sync/PassphraseType;
.super Ljava/lang/Enum;
.source "PassphraseType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/sync/PassphraseType;

.field public static CREATOR:Landroid/os/Parcelable$Creator;

.field public static final enum CUSTOM_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

.field public static final enum FROZEN_IMPLICIT_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

.field public static final enum IMPLICIT_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

.field public static final enum KEYSTORE_PASSPHRASE:Lorg/chromium/sync/PassphraseType;


# instance fields
.field private final mNativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lorg/chromium/sync/PassphraseType;

    const-string/jumbo v1, "IMPLICIT_PASSPHRASE"

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/sync/PassphraseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/sync/PassphraseType;->IMPLICIT_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    .line 22
    new-instance v0, Lorg/chromium/sync/PassphraseType;

    const-string/jumbo v1, "KEYSTORE_PASSPHRASE"

    invoke-direct {v0, v1, v3, v3}, Lorg/chromium/sync/PassphraseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/sync/PassphraseType;->KEYSTORE_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    .line 23
    new-instance v0, Lorg/chromium/sync/PassphraseType;

    const-string/jumbo v1, "FROZEN_IMPLICIT_PASSPHRASE"

    invoke-direct {v0, v1, v4, v4}, Lorg/chromium/sync/PassphraseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/sync/PassphraseType;->FROZEN_IMPLICIT_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    .line 24
    new-instance v0, Lorg/chromium/sync/PassphraseType;

    const-string/jumbo v1, "CUSTOM_PASSPHRASE"

    invoke-direct {v0, v1, v5, v5}, Lorg/chromium/sync/PassphraseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/sync/PassphraseType;->CUSTOM_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/chromium/sync/PassphraseType;

    sget-object v1, Lorg/chromium/sync/PassphraseType;->IMPLICIT_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/sync/PassphraseType;->KEYSTORE_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/sync/PassphraseType;->FROZEN_IMPLICIT_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/sync/PassphraseType;->CUSTOM_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/chromium/sync/PassphraseType;->$VALUES:[Lorg/chromium/sync/PassphraseType;

    .line 26
    new-instance v0, Lorg/chromium/sync/PassphraseType$1;

    invoke-direct {v0}, Lorg/chromium/sync/PassphraseType$1;-><init>()V

    sput-object v0, Lorg/chromium/sync/PassphraseType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lorg/chromium/sync/PassphraseType;->mNativeValue:I

    .line 52
    return-void
.end method

.method public static fromInternalValue(I)Lorg/chromium/sync/PassphraseType;
    .locals 5

    .prologue
    .line 40
    invoke-static {}, Lorg/chromium/sync/PassphraseType;->values()[Lorg/chromium/sync/PassphraseType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 41
    invoke-virtual {v3}, Lorg/chromium/sync/PassphraseType;->internalValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 42
    return-object v3

    .line 40
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No value for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/sync/PassphraseType;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lorg/chromium/sync/PassphraseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/sync/PassphraseType;

    return-object v0
.end method

.method public static values()[Lorg/chromium/sync/PassphraseType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lorg/chromium/sync/PassphraseType;->$VALUES:[Lorg/chromium/sync/PassphraseType;

    invoke-virtual {v0}, [Lorg/chromium/sync/PassphraseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/sync/PassphraseType;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public final getAllowedTypes(Z)Ljava/util/Set;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 81
    sget-object v1, Lorg/chromium/sync/PassphraseType$2;->$SwitchMap$org$chromium$sync$PassphraseType:[I

    invoke-virtual {p0}, Lorg/chromium/sync/PassphraseType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 84
    :pswitch_0
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    if-eqz p1, :cond_0

    .line 86
    sget-object v1, Lorg/chromium/sync/PassphraseType;->CUSTOM_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getVisibleTypes()Ljava/util/Set;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 56
    sget-object v1, Lorg/chromium/sync/PassphraseType$2;->$SwitchMap$org$chromium$sync$PassphraseType:[I

    invoke-virtual {p0}, Lorg/chromium/sync/PassphraseType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 71
    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v1, Lorg/chromium/sync/PassphraseType;->CUSTOM_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :pswitch_1
    sget-object v1, Lorg/chromium/sync/PassphraseType;->KEYSTORE_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v1, Lorg/chromium/sync/PassphraseType;->FROZEN_IMPLICIT_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :pswitch_2
    sget-object v1, Lorg/chromium/sync/PassphraseType;->KEYSTORE_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v1, Lorg/chromium/sync/PassphraseType;->CUSTOM_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final internalValue()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/chromium/sync/PassphraseType;->mNativeValue:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/chromium/sync/PassphraseType;->mNativeValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return-void
.end method
