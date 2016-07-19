.class Lorg/chromium/chrome/browser/cookies/CanonicalCookie;
.super Ljava/lang/Object;
.source "CanonicalCookie.java"


# instance fields
.field private final mCreation:J

.field private final mDomain:Ljava/lang/String;

.field private final mExpiration:J

.field private final mHttpOnly:Z

.field private final mLastAccess:J

.field private final mName:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private final mPriority:I

.field private final mSameSite:Z

.field private final mSecure:Z

.field private final mUrl:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZZZI)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mUrl:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mName:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mValue:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mDomain:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mPath:Ljava/lang/String;

    .line 37
    iput-wide p6, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mCreation:J

    .line 38
    iput-wide p8, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mExpiration:J

    .line 39
    iput-wide p10, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mLastAccess:J

    .line 40
    iput-boolean p12, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mSecure:Z

    .line 41
    iput-boolean p13, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mHttpOnly:Z

    .line 42
    iput-boolean p14, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mSameSite:Z

    .line 43
    iput p15, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mPriority:I

    .line 44
    return-void
.end method

.method static createFromStream(Ljava/io/DataInputStream;)Lorg/chromium/chrome/browser/cookies/CanonicalCookie;
    .locals 16

    .prologue
    .line 135
    new-instance v0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    invoke-direct/range {v0 .. v15}, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZZZI)V

    return-object v0
.end method


# virtual methods
.method getCreationDate()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mCreation:J

    return-wide v0
.end method

.method getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method getExpirationDate()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mExpiration:J

    return-wide v0
.end method

.method getLastAccessDate()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mLastAccess:J

    return-wide v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method getPriority()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mPriority:I

    return v0
.end method

.method getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method isHttpOnly()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mHttpOnly:Z

    return v0
.end method

.method isSameSite()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mSameSite:Z

    return v0
.end method

.method isSecure()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mSecure:Z

    return v0
.end method

.method saveToStream(Ljava/io/DataOutputStream;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 118
    iget-wide v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mCreation:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 119
    iget-wide v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mExpiration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 120
    iget-wide v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mLastAccess:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 121
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mSecure:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 122
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mHttpOnly:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 123
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mSameSite:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 124
    iget v0, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->mPriority:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 125
    return-void
.end method
