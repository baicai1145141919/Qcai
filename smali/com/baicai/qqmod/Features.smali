.class public final Lcom/baicai/qqmod/Features;
.super Ljava/lang/Object;
.source "Features.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baicai/qqmod/Features$InitStep;
    }
.end annotation


# static fields
.field private static final PTT_WAVE:[B

.field private static sFwdConfirmHooked:Z

.field private static sLastVoiceFwdShow:J


# direct methods
.method public static synthetic $r8$lambda$1masqMmnVK1_xRyeRxSpm2z91v4(Landroid/app/Dialog;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smaddSettingsRow(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/baicai/qqmod/Features;->addSettingsRow(Landroid/app/Activity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smforwardPttFile(Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baicai/qqmod/Features;->forwardPttFile(Ljava/lang/Object;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetFirstByType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/baicai/qqmod/Features;->getFirstByType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetFirstNSFieldByType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 0

    invoke-static {p0, p1}, Lcom/baicai/qqmod/Features;->getFirstNSFieldByType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smparseForwardTargets(Landroid/os/Bundle;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/baicai/qqmod/Features;->parseForwardTargets(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smsendPttByPath(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/baicai/qqmod/Features;->sendPttByPath(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smshowVoiceForwardDialog(Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baicai/qqmod/Features;->showVoiceForwardDialog(Ljava/lang/Object;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 119
    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baicai/qqmod/Features;->PTT_WAVE:[B

    .line 201
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baicai/qqmod/Features;->sLastVoiceFwdShow:J

    .line 938
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baicai/qqmod/Features;->sFwdConfirmHooked:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1ct
        0x1at
        0x2bt
        0x1dt
        0x1ft
        0x3dt
        0x22t
        0x31t
        0x33t
        0x38t
        0x34t
        0x4at
        0x29t
        0x3et
        0x42t
        0x2et
        0x19t
        0x39t
        0x31t
        0x46t
        0x21t
        0x2dt
        0x27t
        0x16t
        0x44t
        0x3at
        0x42t
        0x3bt
        0x3bt
        0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSettingsRow(Landroid/app/Activity;)V
    .locals 5

    .line 514
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 515
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    return-void

    .line 516
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    .line 517
    const-string v1, "baicai_settings_row"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    return-void

    .line 520
    :cond_1
    invoke-static {p0, v0}, Lcom/baicai/qqmod/Features;->tryInsertBelowAccount(Landroid/app/Activity;Landroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 523
    :cond_2
    invoke-static {v0}, Lcom/baicai/qqmod/Features;->findListView(Landroid/view/View;)Landroid/widget/ListView;

    move-result-object v1

    .line 524
    if-eqz v1, :cond_3

    .line 525
    invoke-static {p0}, Lcom/baicai/qqmod/Features;->makeSettingsRow(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 526
    const-string p0, "injectSettingsEntry: \u5df2\u7528 ListView.addHeaderView \u52a0\u5165\u53e3"

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 527
    return-void

    .line 530
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    .line 531
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 532
    instance-of v4, v1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    .line 533
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 534
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 535
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 537
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 538
    invoke-static {p0}, Lcom/baicai/qqmod/Features;->makeSettingsRow(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v4, p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 539
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 540
    const-string p0, "injectSettingsEntry: \u5df2\u7528\u5305\u88f9\u6839\u5e03\u5c40\u65b9\u5f0f\u52a0\u5165\u53e3"

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 541
    return-void

    .line 545
    :cond_4
    invoke-static {v0}, Lcom/baicai/qqmod/Features;->findRecyclerParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 546
    if-eqz v0, :cond_5

    .line 547
    invoke-static {p0}, Lcom/baicai/qqmod/Features;->makeSettingsRow(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 548
    const-string p0, "injectSettingsEntry: \u5df2\u7528 RecyclerView \u7236\u5bb9\u5668\u52a0\u5165\u53e3(\u515c\u5e95)"

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 549
    return-void

    .line 552
    :cond_5
    const-string p0, "injectSettingsEntry: \u672a\u627e\u5230\u5408\u9002\u63d2\u5165\u4f4d\u7f6e\uff08\u7248\u672c\u5dee\u5f02\uff09\uff0c\u8df3\u8fc7\uff08\u53ef am start \u6253\u5f00\uff09"

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method private static buildVoiceForwardItem(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 813
    const-string v0, "\u8f6c\u53d1\u8bed\u97f3"

    const-string v1, "a"

    const v2, 0xba1c

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    :try_start_0
    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {p0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8, v0}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    goto :goto_0

    .line 814
    :catchall_0
    move-exception v7

    .line 816
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 817
    new-array v8, v6, [Ljava/lang/String;

    const-string v9, "id"

    aput-object v9, v8, v5

    aput-object v1, v8, v4

    invoke-static {v7, v8, v2}, Lcom/baicai/qqmod/Features;->setIntField(Ljava/lang/Object;[Ljava/lang/String;I)V

    .line 818
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v8, "title"

    aput-object v8, v2, v5

    aput-object v1, v2, v4

    const-string v1, "name"

    aput-object v1, v2, v6

    const-string v1, "text"

    const/4 v4, 0x3

    aput-object v1, v2, v4

    invoke-static {v7, v2, v0}, Lcom/baicai/qqmod/Features;->setStrField(Ljava/lang/Object;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 822
    move-object v0, v7

    .line 824
    :goto_0
    nop

    .line 825
    nop

    .line 826
    new-instance v1, Lcom/baicai/qqmod/Features$4;

    invoke-direct {v1, p1, p2}, Lcom/baicai/qqmod/Features$4;-><init>(Ljava/lang/Object;Ljava/lang/ClassLoader;)V

    .line 836
    invoke-static {p0, v0, v1}, Lcom/baicai/qqmod/Features;->wireClick(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 837
    const-string p0, "voiceForward: \u70b9\u51fb\u56de\u8c03\u6302\u4e0d\u4e0a\uff08\u7248\u672c\u5dee\u5f02\uff09\uff0c\u653e\u5f03\u52a0\u5165"

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 838
    return-object v3

    .line 840
    :cond_0
    return-object v0

    .line 819
    :catchall_1
    move-exception p0

    .line 820
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "voiceForward: \u6784\u9020\u83dc\u5355\u9879\u5931\u8d25 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 821
    return-object v3
.end method

.method private static callMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .line 1338
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1339
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1340
    :goto_0
    if-eqz v1, :cond_3

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_3

    .line 1341
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 1342
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_1

    .line 1344
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1345
    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1346
    :catchall_0
    move-exception v6

    .line 1341
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1350
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 1352
    :cond_3
    return-object v0
.end method

.method private static callStaticMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1292
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1293
    :catchall_0
    move-exception p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VOICE-FWD] callStaticMethod "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " err: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createSessionInfo(Ljava/lang/ClassLoader;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 4

    .line 1085
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.tencent.mobileqq.activity.aio.SessionInfo"

    invoke-static {v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 1086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1087
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1092
    const/16 p1, 0xf9f

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1093
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1094
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1095
    const/4 p2, 0x1

    new-array v2, p2, [Ljava/lang/Class;

    const-class v3, Landroid/os/Parcel;

    aput-object v3, v2, p1

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 1096
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1097
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1098
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    return-object p0

    .line 1100
    :catchall_0
    move-exception p0

    .line 1101
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[VOICE-FWD] createSessionInfo err: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 1102
    return-object v0
.end method

.method private static dp(Landroid/content/Context;I)I
    .locals 0

    .line 806
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static findContext(Ljava/lang/Object;)Landroid/content/Context;
    .locals 7

    .line 1298
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1299
    :cond_0
    instance-of v1, p0, Landroid/content/Context;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/content/Context;

    return-object p0

    .line 1300
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 1301
    const-class v5, Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1303
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1304
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1305
    instance-of v5, v4, Landroid/content/Context;

    if-eqz v5, :cond_2

    check-cast v4, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 1307
    :cond_2
    goto :goto_1

    .line 1306
    :catchall_0
    move-exception v4

    .line 1300
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1310
    :cond_4
    return-object v0
.end method

.method private static findListView(Landroid/view/View;)Landroid/widget/ListView;
    .locals 3

    .line 770
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 771
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 772
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 773
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 774
    instance-of v1, p0, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/widget/ListView;

    return-object p0

    .line 775
    :cond_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 776
    check-cast p0, Landroid/view/ViewGroup;

    .line 777
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 779
    :cond_1
    goto :goto_0

    .line 780
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findRecyclerParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4

    .line 784
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 785
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 786
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_4

    .line 787
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 788
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 789
    const-string v3, "RecyclerView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 790
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 791
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 792
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 793
    const-string v0, "Toolbar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AppBar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    .line 794
    :cond_0
    return-object v2

    .line 793
    :cond_1
    :goto_1
    return-object v1

    .line 797
    :cond_2
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 798
    check-cast p0, Landroid/view/ViewGroup;

    .line 799
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 801
    :cond_3
    goto :goto_0

    .line 802
    :cond_4
    return-object v1
.end method

.method private static findViewByText(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 601
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 602
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 603
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_3

    .line 604
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 605
    nop

    .line 606
    instance-of v2, p0, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 607
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 608
    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 609
    check-cast p0, Landroid/view/ViewGroup;

    .line 610
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 612
    :cond_2
    goto :goto_0

    .line 613
    :cond_3
    return-object v1
.end method

.method private static forwardPttFile(Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 878
    invoke-static {p0}, Lcom/baicai/qqmod/Features;->findContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    .line 879
    if-nez v0, :cond_0

    .line 880
    const-string p0, "voiceForward: \u627e\u4e0d\u5230 Context"

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 881
    return-void

    .line 883
    :cond_0
    const-string v1, "com.tencent.mobileqq.aio.msg.AIOMsgItem"

    invoke-static {p0, v1, p1}, Lcom/baicai/qqmod/Features;->getFieldByType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 884
    if-nez v1, :cond_1

    .line 885
    const-string v1, "com.tencent.qqnt.kernel.nativeinterface.MsgRecord"

    invoke-static {p0, v1, p1}, Lcom/baicai/qqmod/Features;->getFieldByType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 887
    :cond_1
    if-nez v1, :cond_2

    .line 888
    const-string p0, "voiceForward: \u627e\u4e0d\u5230\u6d88\u606f\u5bf9\u8c61"

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 889
    return-void

    .line 891
    :cond_2
    const-string p0, "getMsgRecord"

    invoke-static {v1, p0}, Lcom/baicai/qqmod/Features;->callMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 892
    if-nez p0, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MsgRecord"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 893
    goto :goto_0

    .line 895
    :cond_3
    move-object v1, p0

    :goto_0
    nop

    .line 896
    const/4 p0, 0x0

    if-eqz v1, :cond_6

    .line 897
    const-string v2, "getElements"

    invoke-static {v1, v2}, Lcom/baicai/qqmod/Features;->callMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 898
    instance-of v3, v2, Ljava/util/List;

    const-string v4, "getFilePath"

    if-eqz v3, :cond_5

    .line 899
    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 900
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PttElement"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 901
    invoke-static {v3, v4}, Lcom/baicai/qqmod/Features;->callMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 902
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_4

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 903
    nop

    .line 904
    move-object p0, v3

    goto :goto_2

    .line 907
    :cond_4
    goto :goto_1

    .line 909
    :cond_5
    :goto_2
    if-nez p0, :cond_6

    .line 910
    const-string v2, "com.tencent.qqnt.kernel.nativeinterface.PttElement"

    invoke-static {v1, v2, p1}, Lcom/baicai/qqmod/Features;->getFieldByType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 911
    if-eqz v1, :cond_6

    invoke-static {v1, v4}, Lcom/baicai/qqmod/Features;->callMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 914
    :cond_6
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    .line 918
    :cond_7
    const-string v1, "com.tencent.mobileqq.activity.ForwardRecentActivity"

    invoke-static {v1, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 920
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 921
    const-string p1, "selection_mode"

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 922
    const-string p1, "direct_send_if_dataline_forward"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 923
    const-string p1, "forward_text"

    const-string v3, "null"

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 924
    const-string p1, "ptt_forward_path"

    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    const-string p0, "forward_type"

    const/4 p1, -0x1

    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 926
    const-string p0, "caller_name"

    const-string p1, "ChatActivity"

    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    const-string p0, "k_smartdevice"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 928
    const-string p0, "k_dataline"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 929
    const-string p0, "k_forward_title"

    const-string p1, "\u8bed\u97f3\u8f6c\u53d1"

    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    const/high16 p0, 0x10000000

    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 931
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 932
    return-void

    .line 915
    :cond_8
    :goto_3
    const-string p0, "voiceForward: \u627e\u4e0d\u5230\u8bed\u97f3\u6587\u4ef6\u8def\u5f84"

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 916
    return-void
.end method

.method private static forwardPttFileViaPath(Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 3

    .line 371
    :try_start_0
    invoke-static {p0}, Lcom/baicai/qqmod/Features;->findContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p0

    .line 372
    if-nez p0, :cond_0

    const-string p0, "[VOICE-FWD] \u65e0 Context"

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    return-void

    .line 373
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 374
    :cond_1
    const-string v0, "com.tencent.mobileqq.activity.ForwardRecentActivity"

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 375
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    const-string p1, "selection_mode"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    const-string p1, "direct_send_if_dataline_forward"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 378
    const-string p1, "forward_text"

    const-string v2, "null"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    const-string p1, "ptt_forward_path"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string p1, "forward_type"

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    const-string p1, "caller_name"

    const-string v2, "ChatActivity"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string p1, "k_smartdevice"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 383
    const-string p1, "k_dataline"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 384
    const-string p1, "k_forward_title"

    const-string v1, "\u8bed\u97f3\u8f6c\u53d1"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 386
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 387
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[VOICE-FWD] \u5df2\u542f\u52a8\u8f6c\u53d1: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 388
    goto :goto_1

    .line 373
    :cond_2
    :goto_0
    const-string p0, "[VOICE-FWD] \u8def\u5f84\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u8f6c\u53d1"

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 388
    :catchall_0
    move-exception p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[VOICE-FWD] forward err: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 389
    :goto_1
    return-void
.end method

.method private static getByMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 352
    :goto_0
    if-eqz v0, :cond_2

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    .line 353
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 354
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 355
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 357
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 358
    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 359
    :catchall_0
    move-exception v5

    .line 353
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 363
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 365
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFieldByType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 8

    .line 1314
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1315
    :cond_0
    nop

    .line 1317
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1319
    goto :goto_0

    .line 1318
    :catchall_0
    move-exception p2

    move-object p2, v0

    .line 1320
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1321
    :goto_1
    if-eqz v2, :cond_5

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_5

    .line 1322
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 1323
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 1324
    if-eqz p2, :cond_1

    if-eq v7, p2, :cond_2

    :cond_1
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1326
    :cond_2
    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1327
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    .line 1328
    :catchall_1
    move-exception v6

    .line 1322
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1332
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    .line 1334
    :cond_5
    return-object v0
.end method

.method private static getFirstByType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1023
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1024
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1025
    :goto_0
    if-eqz v0, :cond_4

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_4

    .line 1026
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 1027
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1028
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    return-object v4

    .line 1029
    :catchall_0
    move-exception v4

    :cond_1
    nop

    .line 1026
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1032
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1034
    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFirstNSFieldByType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1012
    nop

    .line 1013
    :goto_0
    if-eqz p0, :cond_2

    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_2

    .line 1014
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1015
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    .line 1014
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1017
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 1019
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMediaDuration(Ljava/lang/String;)J
    .locals 2

    .line 1272
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1273
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1274
    const/16 p0, 0x9

    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    .line 1275
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1276
    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 1277
    :cond_0
    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VOICE-FWD] getMediaDuration err: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 1278
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static hLine(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 270
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 271
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 272
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/baicai/qqmod/Features;->dp(Landroid/content/Context;I)I

    move-result p0

    const/4 v2, -0x1

    invoke-direct {v1, v2, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 271
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    const p0, -0x1a1a1b

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 274
    return-object v0
.end method

.method private static hookForwardConfirm(Ljava/lang/ClassLoader;)V
    .locals 9

    .line 941
    sget-boolean v0, Lcom/baicai/qqmod/Features;->sFwdConfirmHooked:Z

    if-eqz v0, :cond_0

    return-void

    .line 943
    :cond_0
    nop

    .line 944
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.tencent.mobileqq.forward.ForwardBaseOption"

    invoke-static {v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v1, v0

    .line 946
    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 947
    nop

    .line 948
    :try_start_1
    const-string v3, "com.tencent.mobileqq.activity.DirectForwardActivity"

    invoke-static {v3, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 949
    goto :goto_1

    :catchall_1
    move-exception v3

    move-object v3, v0

    .line 950
    :goto_1
    if-eqz v3, :cond_5

    .line 951
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 952
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    .line 953
    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 954
    invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    .line 955
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Class;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    .line 956
    :cond_3
    move-object v1, v6

    goto :goto_4

    .line 951
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 960
    :cond_5
    :goto_4
    if-nez v1, :cond_6

    const-string p0, "[VOICE-FWD] hookForwardConfirm: \u627e\u4e0d\u5230\u76ee\u6807\u7c7b"

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    return-void

    .line 961
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VOICE-FWD] hookForwardConfirm: \u76ee\u6807\u7c7b="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 962
    nop

    .line 963
    :try_start_3
    const-string v3, "buildConfirmDialog"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v3

    .line 964
    :goto_5
    if-nez v0, :cond_8

    .line 965
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    :goto_6
    if-ge v2, v4, :cond_8

    aget-object v5, v3, v2

    .line 966
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_7

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 967
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_7

    move-object v0, v5

    goto :goto_7

    .line 965
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 970
    :cond_8
    :goto_7
    if-nez v0, :cond_9

    const-string p0, "[VOICE-FWD] hookForwardConfirm: \u627e\u4e0d\u5230 buildConfirmDialog"

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    return-void

    .line 971
    :cond_9
    new-instance v2, Lcom/baicai/qqmod/Features$5;

    invoke-direct {v2, p0}, Lcom/baicai/qqmod/Features$5;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1006
    const/4 p0, 0x1

    sput-boolean p0, Lcom/baicai/qqmod/Features;->sFwdConfirmHooked:Z

    .line 1007
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VOICE-FWD] hookForwardConfirm: \u5df2\u6302\u94a9 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1008
    goto :goto_8

    :catchall_3
    move-exception p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VOICE-FWD] hookForwardConfirm \u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 1009
    :goto_8
    return-void
.end method

.method private static hookMenuMethodsBroad(Ljava/lang/ClassLoader;[Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;[Ljava/lang/String;)V
    .locals 10

    .line 420
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 421
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p3, v3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 422
    :cond_0
    array-length p3, p1

    move v1, v2

    :goto_1
    if-ge v1, p3, :cond_6

    aget-object v3, p1, v1

    .line 424
    :try_start_0
    invoke-static {v3, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 425
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 426
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 427
    const-string v9, "menu"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_3

    .line 428
    :cond_1
    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    .line 429
    :cond_2
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    .line 430
    const-class v9, Ljava/util/List;

    if-eq v8, v9, :cond_3

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v8, :cond_4

    .line 432
    :cond_3
    :try_start_1
    invoke-static {v7, p2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 433
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5df2\u6302\u94a9\u83dc\u5355\u65b9\u6cd5 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    goto :goto_3

    .line 434
    :catchall_0
    move-exception v7

    .line 425
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 440
    :cond_5
    goto :goto_4

    .line 438
    :catchall_1
    move-exception v3

    .line 422
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 442
    :cond_6
    return-void
.end method

.method public static initAll(Ljava/lang/ClassLoader;)V
    .locals 2

    .line 32
    new-instance v0, Lcom/baicai/qqmod/Features$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/baicai/qqmod/Features$$ExternalSyntheticLambda2;-><init>(Ljava/lang/ClassLoader;)V

    const-string v1, "pokeNoCoolDown"

    invoke-static {v1, v0}, Lcom/baicai/qqmod/Features;->safeInit(Ljava/lang/String;Lcom/baicai/qqmod/Features$InitStep;)V

    .line 33
    new-instance v0, Lcom/baicai/qqmod/Features$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/baicai/qqmod/Features$$ExternalSyntheticLambda3;-><init>(Ljava/lang/ClassLoader;)V

    const-string v1, "voiceForward"

    invoke-static {v1, v0}, Lcom/baicai/qqmod/Features;->safeInit(Ljava/lang/String;Lcom/baicai/qqmod/Features$InitStep;)V

    .line 34
    new-instance v0, Lcom/baicai/qqmod/Features$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/baicai/qqmod/Features$$ExternalSyntheticLambda4;-><init>(Ljava/lang/ClassLoader;)V

    const-string v1, "hookForwardConfirm"

    invoke-static {v1, v0}, Lcom/baicai/qqmod/Features;->safeInit(Ljava/lang/String;Lcom/baicai/qqmod/Features$InitStep;)V

    .line 35
    new-instance v0, Lcom/baicai/qqmod/Features$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/baicai/qqmod/Features$$ExternalSyntheticLambda5;-><init>(Ljava/lang/ClassLoader;)V

    const-string p0, "injectSettingsEntry"

    invoke-static {p0, v0}, Lcom/baicai/qqmod/Features;->safeInit(Ljava/lang/String;Lcom/baicai/qqmod/Features$InitStep;)V

    .line 36
    return-void
.end method

.method private static injectSettingsEntry(Ljava/lang/ClassLoader;)V
    .locals 9

    .line 451
    const-string v0, "onResume"

    new-instance v1, Lcom/baicai/qqmod/Features$3;

    invoke-direct {v1, p0}, Lcom/baicai/qqmod/Features$3;-><init>(Ljava/lang/ClassLoader;)V

    .line 493
    :try_start_0
    const-class v2, Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 494
    const-string v2, "\u5df2\u6302\u5168\u5c40 Activity.onResume\uff08\u8bbe\u7f6e\u5165\u53e3\uff09"

    invoke-static {v2}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    goto :goto_0

    .line 495
    :catchall_0
    move-exception v2

    .line 496
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hook Activity.onResume \u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 498
    :goto_0
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "androidx.fragment.app.Fragment"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "android.support.v4.app.Fragment"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 502
    move v4, v5

    :goto_1
    if-ge v4, v2, :cond_0

    aget-object v6, v3, v4

    .line 504
    :try_start_1
    invoke-static {v6, v5, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 505
    invoke-static {v7, v0, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 506
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5df2\u6302 Fragment.onResume\uff08\u8bbe\u7f6e\u5165\u53e3\uff09\u57fa\u7c7b="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 508
    goto :goto_2

    .line 507
    :catchall_1
    move-exception v6

    .line 502
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 510
    :cond_0
    return-void
.end method

.method private static itemText(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 4

    .line 278
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 279
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 281
    const p1, -0xe5e5e6

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 283
    const/16 p1, 0x10

    invoke-static {p0, p1}, Lcom/baicai/qqmod/Features;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, p1}, Lcom/baicai/qqmod/Features;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, p1}, Lcom/baicai/qqmod/Features;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, p1}, Lcom/baicai/qqmod/Features;->dp(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 285
    new-instance p0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 286
    const p1, 0x10100a7

    filled-new-array {p1}, [I

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x151516

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 287
    const/4 p1, 0x0

    new-array p1, p1, [I

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 288
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 289
    return-object v0
.end method

.method static synthetic lambda$initAll$0(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    invoke-static {p0}, Lcom/baicai/qqmod/Features;->pokeNoCoolDown(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic lambda$initAll$1(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lcom/baicai/qqmod/Features;->voiceForward(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic lambda$initAll$2(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    invoke-static {p0}, Lcom/baicai/qqmod/Features;->hookForwardConfirm(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic lambda$initAll$3(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 35
    invoke-static {p0}, Lcom/baicai/qqmod/Features;->injectSettingsEntry(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic lambda$makeSettingsRow$6(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 623
    invoke-static {p0}, Lcom/baicai/qqmod/Features;->openSettings(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$sheetRow$7(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 742
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$showVoiceForwardDialog$4(Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 246
    invoke-static {p0, p1, p2}, Lcom/baicai/qqmod/Features;->forwardPttFileViaPath(Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 248
    return-void
.end method

.method static synthetic lambda$showVoiceForwardDialog$5(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 254
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static makeSelector(Landroid/app/Activity;)Landroid/graphics/drawable/StateListDrawable;
    .locals 3

    .line 695
    new-instance p0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 696
    const v0, 0x10100a7

    filled-new-array {v0}, [I

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x131314

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 697
    const/4 v0, 0x0

    new-array v0, v0, [I

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 698
    return-object p0
.end method

.method private static makeSettingsRow(Landroid/app/Activity;)Landroid/view/View;
    .locals 9

    .line 617
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 618
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 619
    const-string v2, "baicai_settings_row"

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 620
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 621
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 622
    invoke-static {}, Lcom/baicai/qqmod/Features;->pressBg()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 623
    new-instance v2, Lcom/baicai/qqmod/Features$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/baicai/qqmod/Features$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 626
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 627
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 628
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 629
    const/16 v6, 0x36

    invoke-static {p0, v6}, Lcom/baicai/qqmod/Features;->dp(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 628
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 632
    const-string v6, "Qcai\u6269\u5c55\u529f\u80fd\u5305"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 634
    const v6, -0xe5e5e6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 635
    invoke-static {p0, v4}, Lcom/baicai/qqmod/Features;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 636
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 638
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 639
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v3, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 642
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 643
    const-string v6, "\u203a"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 645
    const v6, -0x444445

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 646
    invoke-static {p0, v4}, Lcom/baicai/qqmod/Features;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v5, v3, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 647
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 649
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 652
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 653
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 654
    invoke-static {p0, v1}, Lcom/baicai/qqmod/Features;->dp(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {v3, v7, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 653
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    const p0, -0x1a1a1b

    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 656
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 658
    return-object v0
.end method

.method private static openSettings(Landroid/app/Activity;)V
    .locals 2

    .line 663
    :try_start_0
    const-string v0, "Qcai\u6269\u5c55\u529f\u80fd\u5305 \u5df2\u70b9\u51fb"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    goto :goto_0

    .line 664
    :catchall_0
    move-exception v0

    .line 666
    :goto_0
    invoke-static {p0}, Lcom/baicai/qqmod/Features;->showSettingsDialog(Landroid/app/Activity;)V

    .line 667
    return-void
.end method

.method private static parseForwardTargets(Landroid/os/Bundle;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1038
    const-string v0, "forward_multi_target"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "|"

    const/4 v4, -0x1

    const-string v5, "uin"

    if-eqz v2, :cond_4

    .line 1041
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1042
    if-eqz p0, :cond_3

    .line 1043
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1044
    if-nez v0, :cond_0

    goto :goto_0

    .line 1045
    :cond_0
    invoke-static {v0, v5}, Lcom/baicai/qqmod/Features;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1046
    const-string v6, "uinType"

    invoke-static {v0, v6}, Lcom/baicai/qqmod/Features;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1047
    instance-of v6, v0, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v4

    .line 1048
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    :cond_2
    goto :goto_0

    .line 1051
    :cond_3
    goto :goto_2

    .line 1052
    :cond_4
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1053
    const-string v2, "uintype"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 1054
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1056
    :cond_5
    :goto_2
    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VOICE-FWD] parseTargets err: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 1057
    :goto_3
    return-object v1
.end method

.method private static pokeNoCoolDown(Ljava/lang/ClassLoader;)V
    .locals 22

    .line 66
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "com.tencent.mobileqq.paiyipai.PaiYiPaiHandler"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "com.tencent.qqnt.aio.adapter.api.impl.PaiYiPaiApiImpl"

    const/4 v4, 0x1

    aput-object v0, v2, v4

    .line 71
    const/16 v5, 0x11

    new-array v6, v5, [Ljava/lang/String;

    const-string v0, "cansend"

    aput-object v0, v6, v3

    const-string v0, "canreq"

    aput-object v0, v6, v4

    const-string v0, "canpoke"

    aput-object v0, v6, v1

    const-string v0, "candouble"

    const/4 v7, 0x3

    aput-object v0, v6, v7

    const-string v0, "candoubleclick"

    const/4 v8, 0x4

    aput-object v0, v6, v8

    const-string v0, "checkcool"

    const/4 v9, 0x5

    aput-object v0, v6, v9

    const-string v0, "cooldown"

    const/4 v10, 0x6

    aput-object v0, v6, v10

    const-string v0, "sendreq"

    const/4 v11, 0x7

    aput-object v0, v6, v11

    const-string v0, "isover"

    const/16 v12, 0x8

    aput-object v0, v6, v12

    const-string v0, "checkfreq"

    const/16 v13, 0x9

    aput-object v0, v6, v13

    const-string v0, "frequency"

    const/16 v14, 0xa

    aput-object v0, v6, v14

    const-string v0, "canui"

    const/16 v15, 0xb

    aput-object v0, v6, v15

    const-string v0, "allow"

    const/16 v16, 0xc

    aput-object v0, v6, v16

    const-string v0, "cansendreq"

    const/16 v17, 0xd

    aput-object v0, v6, v17

    const-string v0, "checkpoke"

    const/16 v18, 0xe

    aput-object v0, v6, v18

    const-string v0, "canclick"

    const/16 v19, 0xf

    aput-object v0, v6, v19

    const-string v0, "nudge"

    const/16 v20, 0x10

    aput-object v0, v6, v20

    .line 75
    move/from16 v21, v3

    new-array v3, v5, [Ljava/lang/String;

    const-string v0, "guid"

    aput-object v0, v3, v21

    const-string v0, "tip"

    aput-object v0, v3, v4

    const-string v0, "toast"

    aput-object v0, v3, v1

    const-string v0, "dialog"

    aput-object v0, v3, v7

    const-string v0, "banner"

    aput-object v0, v3, v8

    const-string v0, "reddot"

    aput-object v0, v3, v9

    const-string v0, "show"

    aput-object v0, v3, v10

    const-string v0, "guide"

    aput-object v0, v3, v11

    const-string v0, "visib"

    aput-object v0, v3, v12

    const-string v0, "display"

    aput-object v0, v3, v13

    const-string v0, "isopen"

    aput-object v0, v3, v14

    const-string v0, "allowed"

    aput-object v0, v3, v15

    const-string v0, "has"

    aput-object v0, v3, v16

    const-string v0, "need"

    aput-object v0, v3, v17

    const-string v0, "support"

    aput-object v0, v3, v18

    const-string v0, "enable"

    aput-object v0, v3, v19

    const-string v0, "open"

    aput-object v0, v3, v20

    .line 77
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 79
    move/from16 v9, v21

    :goto_0
    if-ge v9, v1, :cond_7

    aget-object v10, v2, v9

    .line 81
    move-object/from16 v11, p0

    :try_start_0
    invoke-static {v10, v11}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v10, v0

    move/from16 v12, v21

    :goto_1
    if-ge v12, v10, :cond_6

    aget-object v13, v0, v12

    .line 84
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v14

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v14, v15, :cond_0

    goto :goto_5

    .line 85
    :cond_0
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 86
    nop

    .line 87
    move/from16 v15, v21

    :goto_2
    if-ge v15, v5, :cond_2

    aget-object v1, v3, v15

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_3

    :cond_1
    add-int/lit8 v15, v15, 0x1

    const/4 v1, 0x2

    goto :goto_2

    :cond_2
    move/from16 v1, v21

    .line 88
    :goto_3
    if-eqz v1, :cond_3

    goto :goto_5

    .line 89
    :cond_3
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    move/from16 v1, v21

    :goto_4
    if-ge v1, v5, :cond_5

    aget-object v15, v6, v1

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 83
    :cond_5
    :goto_5
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x2

    goto :goto_1

    .line 81
    :catchall_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[POKE] \u5019\u9009\u7c7b\u4e0d\u5b58\u5728: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 79
    :cond_6
    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x2

    goto :goto_0

    .line 93
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    move-object v8, v7

    .line 94
    :goto_6
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 95
    const-string v0, "[POKE] \u672a\u627e\u5230 PaiYiPaiHandler \u81ea\u8eab\u7684\u51b7\u5374\u5224\u65ad\u65b9\u6cd5"

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 96
    return-void

    .line 98
    :cond_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[POKE] \u5c06\u6302\u94a9\u81ea\u8eab boolean \u65b9\u6cd5\u6570="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (\u53ea hook \u76ee\u6807\u7c7b\u81ea\u8eab\u58f0\u660e, \u4e0d\u6ce2\u53ca\u7236\u7c7b/\u63a5\u53e3)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 100
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 101
    nop

    .line 102
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 103
    new-instance v2, Lcom/baicai/qqmod/Features$1;

    invoke-direct {v2}, Lcom/baicai/qqmod/Features$1;-><init>()V

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 112
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "(\u81ea\u8eab\u65b9\u6cd5)"

    goto :goto_8

    :cond_a
    const-string v3, "(\u767d\u540d\u5355)"

    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[POKE] \u5df2\u6302\u94a9(boolean) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v1}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 114
    goto :goto_7

    .line 115
    :cond_b
    return-void
.end method

.method private static pressBg()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .line 763
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 764
    const v1, 0x10100a7

    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x131314

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 765
    const/4 v1, 0x0

    new-array v1, v1, [I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 766
    return-object v0
.end method

.method private static readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1061
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1062
    :goto_0
    if-eqz v0, :cond_0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 1063
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1064
    :catchall_0
    move-exception v1

    .line 1065
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1067
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1071
    nop

    .line 1072
    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-class v1, Ljava/lang/Object;

    if-eq p0, v1, :cond_0

    .line 1073
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1074
    :catchall_0
    move-exception v0

    .line 1075
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 1077
    :cond_0
    return-object v0
.end method

.method private static resolvePttPath(Ljava/lang/Object;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 21

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "): "

    const-string v3, " | "

    :try_start_0
    const-string v5, "com.tencent.qqnt.kernel.nativeinterface.PttElement"

    invoke-static {v5, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 244
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 245
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 246
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 247
    invoke-static {v6}, Lcom/baicai/qqmod/Features;->superChain(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[VOICE-FWD] resolvePttPath \u8bca\u65ad: component="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " supers="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 246
    invoke-static {v7}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 250
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 251
    move-object v8, v6

    .line 252
    :goto_0
    const-string v9, "Element"

    const-string v10, "Ptt"

    const-string v11, "()->"

    const-string v12, "."

    if-eqz v8, :cond_7

    :try_start_1
    const-class v14, Ljava/lang/Object;

    if-eq v8, v14, :cond_7

    .line 253
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v14

    array-length v15, v14

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v15, :cond_6

    aget-object v16, v14, v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    const/16 v17, 0x0

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_0

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move/from16 v16, v13

    goto/16 :goto_3

    .line 255
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    .line 256
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move/from16 v16, v13

    goto :goto_3

    .line 257
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 258
    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    move-object/from16 v18, v6

    const-string v6, "Msg"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "Item"

    .line 259
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "Record"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v19, v8

    move/from16 v16, v13

    goto :goto_3

    .line 258
    :cond_3
    move-object/from16 v18, v6

    .line 260
    :cond_4
    :goto_2
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v19, v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    move/from16 v16, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 256
    :cond_5
    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move/from16 v16, v13

    .line 253
    :goto_3
    add-int/lit8 v13, v16, 0x1

    move-object/from16 v6, v18

    move-object/from16 v8, v19

    goto/16 :goto_1

    .line 263
    :cond_6
    move-object/from16 v18, v6

    move-object/from16 v19, v8

    const/16 v17, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    move-object/from16 v6, v18

    goto/16 :goto_0

    .line 252
    :cond_7
    move-object/from16 v18, v6

    const/16 v17, 0x0

    .line 265
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[VOICE-FWD] \u5019\u9009\u8bbf\u95ee\u5668("

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 269
    const-string v4, "com.tencent.mobileqq.aio.msg.AIOMsgItem"

    invoke-static {v0, v4, v1}, Lcom/baicai/qqmod/Features;->getFieldByType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    .line 270
    const/4 v6, 0x1

    if-nez v4, :cond_9

    .line 271
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 272
    const-string v14, "AIOMsgItem"

    invoke-virtual {v8, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 273
    const/16 v14, 0x2e

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    add-int/2addr v14, v6

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 274
    invoke-static {v0, v8}, Lcom/baicai/qqmod/Features;->callMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    if-eqz v8, :cond_8

    move-object v4, v8

    goto :goto_5

    .line 277
    :cond_8
    goto :goto_4

    .line 279
    :cond_9
    :goto_5
    const-string v0, ")"

    if-nez v4, :cond_a

    .line 280
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VOICE-FWD] \u672a\u62ff\u5230 msgItem (component="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 281
    return-object v17

    .line 283
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[VOICE-FWD] msgItem="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 286
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 287
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 288
    :goto_6
    if-eqz v8, :cond_11

    const-class v14, Ljava/lang/Object;

    if-eq v8, v14, :cond_11

    .line 289
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v14

    array-length v15, v14

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v15, :cond_10

    aget-object v18, v14, v13

    .line 290
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-eqz v6, :cond_b

    move-object/from16 p0, v8

    move-object/from16 v20, v9

    move-object/from16 v18, v10

    goto :goto_9

    .line 291
    :cond_b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 292
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v20

    if-eqz v20, :cond_c

    move-object/from16 p0, v8

    move-object/from16 v20, v9

    move-object/from16 v18, v10

    goto :goto_9

    .line 293
    :cond_c
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 294
    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_e

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_d

    goto :goto_8

    :cond_d
    move-object/from16 p0, v8

    move-object/from16 v20, v9

    move-object/from16 v18, v10

    goto :goto_9

    .line 295
    :cond_e
    :goto_8
    move-object/from16 p0, v8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v20, v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 292
    :cond_f
    move-object/from16 p0, v8

    move-object/from16 v20, v9

    move-object/from16 v18, v10

    .line 289
    :goto_9
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v10, v18

    move-object/from16 v9, v20

    const/4 v6, 0x1

    goto :goto_7

    .line 298
    :cond_10
    move-object/from16 p0, v8

    move-object/from16 v20, v9

    move-object/from16 v18, v10

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    move-object/from16 v10, v18

    move-object/from16 v9, v20

    const/4 v6, 0x1

    goto/16 :goto_6

    .line 300
    :cond_11
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v3, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[VOICE-FWD] msgItem\u5019\u9009\u8bbf\u95ee\u5668("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 304
    :goto_a
    const-string v3, "getFilePath"

    if-eqz v2, :cond_17

    :try_start_4
    const-class v6, Ljava/lang/Object;

    if-eq v2, v6, :cond_17

    .line 305
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v7, :cond_16

    aget-object v9, v6, v8

    .line 306
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    array-length v10, v10

    if-nez v10, :cond_14

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    if-eqz v10, :cond_14

    .line 307
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 308
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 309
    const/4 v11, 0x0

    new-array v13, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v4, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 310
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    .line 311
    if-nez v13, :cond_12

    const-string v16, "null"

    goto :goto_c

    :cond_12
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    :goto_c
    move-object/from16 v10, v16

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p0, v2

    const-string v2, "[VOICE-FWD] \u7b56\u7565A \u547d\u4e2d "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " -> "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-static {v2}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 312
    if-eqz v13, :cond_15

    .line 313
    invoke-static {v13, v3}, Lcom/baicai/qqmod/Features;->callMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 314
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[VOICE-FWD] \u7b56\u7565A getFilePath="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 315
    instance-of v10, v2, Ljava/lang/String;

    if-eqz v10, :cond_15

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_15

    .line 316
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VOICE-FWD] resolvePttPath: \u7ecf\u65b9\u6cd5 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u62ff\u5230\u8def\u5f84"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 317
    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 307
    :cond_13
    move-object/from16 p0, v2

    goto :goto_d

    .line 306
    :cond_14
    move-object/from16 p0, v2

    .line 305
    :cond_15
    :goto_d
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p0

    goto/16 :goto_b

    .line 322
    :cond_16
    move-object/from16 p0, v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto/16 :goto_a

    .line 325
    :cond_17
    invoke-static {v4, v5, v1}, Lcom/baicai/qqmod/Features;->getFieldByType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 326
    if-eqz v1, :cond_18

    .line 327
    invoke-static {v1, v3}, Lcom/baicai/qqmod/Features;->callMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 328
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[VOICE-FWD] \u7b56\u7565B \u5b57\u6bb5 pe="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " getFilePath="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 329
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_18

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 330
    const-string v0, "[VOICE-FWD] resolvePttPath: \u7ecf\u5b57\u6bb5\u62ff\u5230\u8def\u5f84"

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 331
    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 334
    :cond_18
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VOICE-FWD] resolvePttPath: \u4ecd\u672a\u627e\u5230\u8def\u5f84 (msgItem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 335
    goto :goto_f

    :catchall_0
    move-exception v0

    goto :goto_e

    :catchall_1
    move-exception v0

    const/16 v17, 0x0

    :goto_e
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VOICE-FWD] resolvePttPath err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 336
    :goto_f
    return-object v17
.end method

.method private static roundBg(Landroid/content/Context;I)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 294
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 295
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 296
    invoke-static {p0, p1}, Lcom/baicai/qqmod/Features;->dp(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 297
    return-object v0
.end method

.method private static roundedWhite(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 755
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 756
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 757
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 758
    float-to-int p1, p1

    invoke-static {p0, p1}, Lcom/baicai/qqmod/Features;->dp(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 759
    return-object v0
.end method

.method private static safeInit(Ljava/lang/String;Lcom/baicai/qqmod/Features$InitStep;)V
    .locals 2

    .line 42
    const-string v0, "[INIT] "

    :try_start_0
    invoke-interface {p1}, Lcom/baicai/qqmod/Features$InitStep;->run()V

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " \u5b8c\u6210"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \u5f02\u5e38: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void
.end method

.method private static sendPttByPath(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 22

    .line 1108
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const-string v5, "createPttElement"

    const-string v6, ""

    const-string v7, "api"

    const/4 v8, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[VOICE-FWD] sendPtt: path="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " uin="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " uinType="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    .line 1110
    nop

    .line 1112
    const/4 v9, 0x0

    :try_start_1
    const-string v0, "mqq.app.MobileQQ"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1113
    const-string v10, "sMobileQQ"

    invoke-static {v0, v10}, Lcom/baicai/qqmod/Features;->readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1114
    if-eqz v10, :cond_0

    .line 1115
    :try_start_2
    const-string v0, "getAppRuntime"

    invoke-static {v10, v0}, Lcom/baicai/qqmod/Features;->callMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v11, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v11, v9

    .line 1116
    :goto_0
    if-nez v11, :cond_1

    :try_start_3
    const-string v0, "mAppRuntime"

    invoke-static {v10, v0}, Lcom/baicai/qqmod/Features;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 1118
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 1114
    :cond_0
    move-object v11, v9

    goto :goto_1

    .line 1118
    :catchall_2
    move-exception v0

    move-object v11, v9

    :cond_1
    :goto_1
    nop

    .line 1119
    if-nez v11, :cond_2

    :try_start_4
    const-string v0, "[VOICE-FWD] sendPtt: appRuntime null"

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    return v8

    .line 1124
    :cond_2
    const/4 v10, 0x2

    const/4 v12, 0x1

    :try_start_5
    const-string v0, "nep.timeline.MessageUtils"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1125
    const-string v13, "io.github.qauxv.util.data.ContactDescriptor"

    invoke-static {v13, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v13

    .line 1126
    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v14

    .line 1127
    const-string v15, "uin"

    invoke-static {v14, v15, v3}, Lcom/baicai/qqmod/Features;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1128
    const-string v15, "uinType"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move/from16 v16, v8

    :try_start_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14, v15, v8}, Lcom/baicai/qqmod/Features;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1129
    const-string v8, "nick"

    invoke-static {v14, v8, v3}, Lcom/baicai/qqmod/Features;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1130
    const-string v8, "sendVoice"

    new-array v15, v10, [Ljava/lang/Class;

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    aput-object v13, v15, v12

    invoke-virtual {v0, v8, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1131
    invoke-virtual {v0, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1132
    filled-new-array {v2, v14}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1133
    instance-of v8, v0, Ljava/lang/Boolean;

    if-eqz v8, :cond_3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v12

    goto :goto_2

    :cond_3
    move/from16 v0, v16

    .line 1134
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[VOICE-FWD] sendPtt \u7b56\u7565A(MessageUtils.sendVoice)="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1135
    if-eqz v0, :cond_4

    return v12

    .line 1136
    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move/from16 v16, v8

    :goto_3
    :try_start_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[VOICE-FWD] sendPtt \u7b56\u7565A \u4e0d\u53ef\u7528: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    :cond_4
    nop

    .line 1144
    :try_start_8
    const-string v0, "com.tencent.mobileqq.qroute.QRoute"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1145
    const-string v13, "com.tencent.qqnt.msg.api.IMsgService"

    invoke-static {v13, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v13

    .line 1146
    const-string v14, "com.tencent.relation.common.api.IRelationNTUinAndUidApi"

    invoke-static {v14, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v14

    .line 1147
    const-string v15, "com.tencent.qqnt.msg.api.IMsgUtilApi"

    invoke-static {v15, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v15

    .line 1148
    new-array v9, v12, [Ljava/lang/Class;

    const-class v18, Ljava/lang/Class;

    aput-object v18, v9, v16

    move/from16 v18, v10

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v0, v7, v9, v10}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1149
    new-array v10, v12, [Ljava/lang/Class;

    const-class v19, Ljava/lang/Class;

    aput-object v19, v10, v16

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v0, v7, v10, v14}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1150
    new-array v14, v12, [Ljava/lang/Class;

    const-class v19, Ljava/lang/Class;

    aput-object v19, v14, v16

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v0, v7, v14, v15}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1151
    if-eqz v9, :cond_5

    move v0, v12

    goto :goto_4

    :cond_5
    move/from16 v0, v16

    :goto_4
    if-eqz v10, :cond_6

    move v14, v12

    goto :goto_5

    :cond_6
    move/from16 v14, v16

    :goto_5
    if-eqz v7, :cond_7

    move v15, v12

    goto :goto_6

    :cond_7
    move/from16 v15, v16

    :goto_6
    move/from16 v19, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[VOICE-FWD] \u7b56\u7565C \u670d\u52a1: msgSvc="

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " uidApi="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " utilApi="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 1152
    if-eqz v9, :cond_16

    if-nez v7, :cond_8

    goto/16 :goto_15

    .line 1156
    :cond_8
    nop

    .line 1157
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v8, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    move/from16 v12, v16

    :goto_7
    const-string v14, "sendMsg"

    if-ge v12, v8, :cond_b

    :try_start_9
    aget-object v15, v0, v12

    .line 1158
    move-object/from16 v20, v0

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    move/from16 v21, v8

    const/4 v8, 0x3

    if-ne v0, v8, :cond_a

    goto :goto_8

    :cond_9
    move/from16 v21, v8

    .line 1157
    :cond_a
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v20

    move/from16 v8, v21

    goto :goto_7

    :cond_b
    const/4 v15, 0x0

    .line 1160
    :goto_8
    if-nez v15, :cond_e

    .line 1161
    invoke-virtual {v13}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v8, v0

    move/from16 v12, v16

    :goto_9
    if-ge v12, v8, :cond_e

    aget-object v13, v0, v12

    .line 1162
    move-object/from16 v20, v0

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    move/from16 v21, v8

    const/4 v8, 0x3

    if-ne v0, v8, :cond_d

    move-object v15, v13

    goto :goto_a

    :cond_c
    move/from16 v21, v8

    .line 1161
    :cond_d
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v20

    move/from16 v8, v21

    goto :goto_9

    .line 1165
    :cond_e
    :goto_a
    if-nez v15, :cond_f

    const-string v0, "[VOICE-FWD] \u7b56\u7565C \u627e\u4e0d\u5230 sendMsg"

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1167
    :cond_f
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v8, v0, v16

    .line 1168
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v12, v0, v18

    .line 1169
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v12

    const-string v12, "[VOICE-FWD] \u7b56\u7565C sendMsg param0="

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " param2="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    .line 1170
    add-int/lit8 v12, v4, 0x1

    .line 1171
    nop

    .line 1173
    move/from16 v13, v18

    if-eq v12, v13, :cond_11

    const/4 v0, 0x4

    if-eq v12, v0, :cond_11

    if-eqz v10, :cond_11

    .line 1174
    :try_start_a
    const-string v0, "getUidFromUin"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v10, v0, v13}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1175
    goto :goto_b

    :catchall_5
    move-exception v0

    :try_start_b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[VOICE-FWD] \u7b56\u7565C getUidFromUin err: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    move-object v0, v3

    .line 1176
    :goto_b
    if-nez v0, :cond_10

    goto :goto_c

    :cond_10
    move-object v10, v0

    goto :goto_d

    .line 1178
    :cond_11
    :goto_c
    move-object v10, v3

    :goto_d
    nop

    .line 1180
    const/4 v13, 0x3

    :try_start_c
    new-array v0, v13, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v0, v16

    const-class v13, Ljava/lang/String;

    aput-object v13, v0, v19

    const-class v13, Ljava/lang/String;

    const/16 v18, 0x2

    aput-object v13, v0, v18

    .line 1181
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13, v10, v6}, [Ljava/lang/Object;

    move-result-object v13

    .line 1180
    invoke-static {v8, v0, v13}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 1190
    move-object v8, v0

    goto :goto_10

    .line 1182
    :catchall_6
    move-exception v0

    .line 1183
    :try_start_d
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[VOICE-FWD] \u7b56\u7565C Contact \u4e09\u53c2\u6784\u9020\u5931\u8d25, \u9000\u5b57\u6bb5: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    .line 1185
    :try_start_e
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 1186
    :try_start_f
    const-string v0, "chatType"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v8, v0, v13}, Lcom/baicai/qqmod/Features;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1187
    const-string v0, "peerUid"

    invoke-static {v8, v0, v10}, Lcom/baicai/qqmod/Features;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1188
    const-string v0, "guildId"

    invoke-static {v8, v0, v6}, Lcom/baicai/qqmod/Features;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_f

    .line 1189
    :catchall_7
    move-exception v0

    goto :goto_e

    :catchall_8
    move-exception v0

    const/4 v8, 0x0

    :goto_e
    :try_start_10
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[VOICE-FWD] \u7b56\u7565C Contact \u5b57\u6bb5\u6784\u9020\u5931\u8d25: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    :goto_f
    nop

    .line 1191
    :goto_10
    if-nez v8, :cond_12

    const-string v0, "[VOICE-FWD] \u7b56\u7565C Contact \u6784\u9020\u5931\u8d25"

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1193
    :cond_12
    invoke-static {v2}, Lcom/baicai/qqmod/Features;->getMediaDuration(Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 1194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1195
    sget-object v4, Lcom/baicai/qqmod/Features;->PTT_WAVE:[B

    array-length v6, v4

    move/from16 v13, v16

    :goto_11
    if-ge v13, v6, :cond_13

    aget-byte v15, v4, v13

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    .line 1196
    :cond_13
    nop

    .line 1198
    :try_start_11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v5, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 1199
    move-object v4, v0

    goto :goto_12

    :catchall_9
    move-exception v0

    :try_start_12
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[VOICE-FWD] \u7b56\u7565C createPttElement(\u6ce2\u5f62) err: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    const/4 v4, 0x0

    .line 1200
    :goto_12
    if-nez v4, :cond_14

    .line 1202
    :try_start_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1203
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v2, v6, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v5, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1204
    const-string v0, "[VOICE-FWD] \u7b56\u7565C createPttElement \u56de\u9000\u7a7a\u6ce2\u5f62"

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    goto :goto_13

    .line 1205
    :catchall_a
    move-exception v0

    :try_start_14
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[VOICE-FWD] \u7b56\u7565C createPttElement(\u7a7a) err: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    :goto_13
    nop

    .line 1207
    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_15
    const-string v0, "null"

    :goto_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[VOICE-FWD] \u7b56\u7565C createPttElement="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 1208
    if-eqz v4, :cond_17

    .line 1209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1210
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1211
    move/from16 v4, v19

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v20, v5, v16

    new-instance v4, Lcom/baicai/qqmod/Features$6;

    invoke-direct {v4}, Lcom/baicai/qqmod/Features$6;-><init>()V

    invoke-static {v1, v5, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    .line 1218
    filled-new-array {v8, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v14, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VOICE-FWD] \u7b56\u7565C sendMsg \u5df2\u8c03\u7528 chatType="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " uid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " dur="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 1220
    const/16 v19, 0x1

    return v19

    .line 1153
    :cond_16
    :goto_15
    const-string v0, "[VOICE-FWD] \u7b56\u7565C \u670d\u52a1\u7f3a\u5931\uff0c\u8df3\u8fc7"

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    goto :goto_16

    .line 1225
    :catchall_b
    move-exception v0

    :try_start_15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VOICE-FWD] \u7b56\u7565C err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    :cond_17
    :goto_16
    nop

    .line 1230
    :try_start_16
    const-string v0, "com.tencent.mobileqq.app.QQAppInterface"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1231
    const-string v3, "com.tencent.mobileqq.activity.aio.SessionInfo"

    invoke-static {v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 1232
    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-static {v1, v4, v5}, Lcom/baicai/qqmod/Features;->createSessionInfo(Ljava/lang/ClassLoader;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    .line 1233
    if-nez v4, :cond_18

    const-string v0, "[VOICE-FWD] sendPtt: SessionInfo \u6784\u9020\u5931\u8d25"

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    return v16

    .line 1234
    :cond_18
    const-string v5, "com.tencent.mobileqq.activity.ChatActivityFacade"

    invoke-static {v5, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 1235
    nop

    .line 1236
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v5, v1

    move/from16 v6, v16

    :goto_17
    if-ge v6, v5, :cond_1c

    aget-object v7, v1, v6

    .line 1237
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 1238
    array-length v9, v8

    const/4 v13, 0x3

    if-ne v9, v13, :cond_1a

    aget-object v9, v8, v16

    if-ne v9, v0, :cond_1a

    const/16 v19, 0x1

    aget-object v9, v8, v19

    if-ne v9, v3, :cond_1a

    const/16 v18, 0x2

    aget-object v8, v8, v18

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_1b

    .line 1240
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v8, v9, :cond_19

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v8, v9, :cond_19

    .line 1241
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_1b

    .line 1242
    :cond_19
    goto :goto_18

    .line 1238
    :cond_1a
    const/16 v18, 0x2

    .line 1236
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_1c
    const/4 v7, 0x0

    .line 1245
    :goto_18
    if-nez v7, :cond_1d

    .line 1246
    const-string v0, "[VOICE-FWD] sendPtt: \u65e0 (QQAppInterface,SessionInfo,String)->long/int/void \u5339\u914d"

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 1247
    return v16

    .line 1249
    :cond_1d
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VOICE-FWD] sendPtt \u7b56\u7565B \u65b9\u6cd5="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " appRuntime\u7c7b="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 1250
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    .line 1253
    :try_start_17
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1254
    filled-new-array {v11, v4, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_19

    .line 1256
    :cond_1e
    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    .line 1261
    :goto_19
    nop

    .line 1262
    :try_start_18
    instance-of v2, v0, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1f

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_1a

    :cond_1f
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_20

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    goto :goto_1a

    :cond_20
    move-wide v5, v3

    .line 1263
    :goto_1a
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[VOICE-FWD] sendPtt \u6210\u529f(\u7b56\u7565B "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")=> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 1264
    cmp-long v0, v5, v3

    if-lez v0, :cond_21

    move v8, v1

    goto :goto_1b

    :cond_21
    move/from16 v8, v16

    :goto_1b
    return v8

    .line 1258
    :catch_0
    move-exception v0

    .line 1259
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VOICE-FWD] sendPtt \u7b56\u7565B \u5185\u90e8\u5f02\u5e38: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    .line 1260
    return v16

    .line 1265
    :catchall_c
    move-exception v0

    :try_start_19
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VOICE-FWD] sendPtt \u7b56\u7565B err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    return v16

    .line 1266
    :catchall_d
    move-exception v0

    goto :goto_1c

    :catchall_e
    move-exception v0

    move/from16 v16, v8

    :goto_1c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VOICE-FWD] sendPtt err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    return v16
.end method

.method private static setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1282
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1283
    :goto_0
    if-eqz v0, :cond_0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 1284
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1285
    :catchall_0
    move-exception v1

    .line 1286
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1288
    :cond_0
    return-void
.end method

.method private static setIntField(Ljava/lang/Object;[Ljava/lang/String;I)V
    .locals 9

    .line 1356
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 1357
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_1

    .line 1358
    array-length v5, p1

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p1, v6

    .line 1359
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1361
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1362
    invoke-virtual {v4, p0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    return-void

    .line 1364
    :catchall_0
    move-exception v7

    .line 1358
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1356
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1370
    :cond_2
    return-void
.end method

.method private static setStrField(Ljava/lang/Object;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1373
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 1374
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_1

    .line 1375
    array-length v5, p1

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p1, v6

    .line 1376
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1378
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1379
    invoke-virtual {v4, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1380
    return-void

    .line 1381
    :catchall_0
    move-exception v7

    .line 1375
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1373
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1387
    :cond_2
    return-void
.end method

.method private static sheetDivider(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 747
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 748
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    const p0, -0x1a1a1b

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 751
    return-object v0
.end method

.method private static sheetRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;
    .locals 2

    .line 733
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 734
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    const/high16 p1, 0x41880000    # 17.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 736
    const p1, -0xe5e5e6

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 737
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 738
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 739
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 740
    invoke-static {}, Lcom/baicai/qqmod/Features;->pressBg()Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 741
    const/16 p1, 0x10

    invoke-static {p0, p1}, Lcom/baicai/qqmod/Features;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, p1}, Lcom/baicai/qqmod/Features;->dp(Landroid/content/Context;I)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1, p1, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 742
    new-instance p0, Lcom/baicai/qqmod/Features$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2}, Lcom/baicai/qqmod/Features$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    return-object v0
.end method

.method private static showSettingsDialog(Landroid/app/Activity;)V
    .locals 4

    .line 671
    :try_start_0
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x103012c

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 672
    const-string v1, "Qcai\u6269\u5c55\u529f\u80fd\u5305"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 673
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baicai/qqmod/Features$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/baicai/qqmod/Features$$ExternalSyntheticLambda6;-><init>(Landroid/app/Dialog;)V

    invoke-static {p0, v1}, Lcom/baicai/qqmod/SettingsActivity;->buildUi(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 674
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 675
    if-eqz v1, :cond_0

    .line 676
    const/4 v2, -0x1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 679
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 680
    const-string v0, "openSettings: Dialog \u5df2\u663e\u793a"

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 682
    :try_start_1
    const-string v0, "Qcai\u6269\u5c55\u529f\u80fd\u5305 \u754c\u9762\u5df2\u6253\u5f00"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 684
    goto :goto_0

    .line 683
    :catchall_0
    move-exception p0

    .line 691
    :goto_0
    goto :goto_1

    .line 685
    :catchall_1
    move-exception v0

    .line 686
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openSettings: Dialog \u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 688
    :try_start_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6253\u5f00\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 690
    goto :goto_1

    .line 689
    :catchall_2
    move-exception p0

    .line 692
    :goto_1
    return-void
.end method

.method private static showVoiceForwardDialog(Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    .locals 10

    .line 206
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 207
    sget-wide v2, Lcom/baicai/qqmod/Features;->sLastVoiceFwdShow:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 208
    :cond_0
    sput-wide v0, Lcom/baicai/qqmod/Features;->sLastVoiceFwdShow:J

    .line 209
    invoke-static {p0}, Lcom/baicai/qqmod/Features;->findContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    .line 210
    if-nez v0, :cond_1

    .line 211
    const-string p0, "[VOICE-FWD] \u627e\u4e0d\u5230 Context\uff0c\u65e0\u6cd5\u5f39\u5bf9\u8bdd\u6846"

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 212
    return-void

    .line 214
    :cond_1
    invoke-static {p0, p1}, Lcom/baicai/qqmod/Features;->resolvePttPath(Ljava/lang/Object;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v1

    .line 215
    nop

    .line 216
    nop

    .line 217
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    :cond_2
    const-string v2, "[VOICE-FWD] \u627e\u4e0d\u5230\u8bed\u97f3\u6587\u4ef6\u8def\u5f84\uff0c\u4ecd\u5f39\u5bf9\u8bdd\u6846\u63d0\u793a"

    invoke-static {v2}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 221
    :cond_3
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 222
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 223
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 224
    if-eqz v4, :cond_4

    .line 226
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    :cond_4
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 230
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 231
    const/16 v6, 0x10

    invoke-static {v0, v6}, Lcom/baicai/qqmod/Features;->roundBg(Landroid/content/Context;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 232
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    .line 234
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 235
    const-string v8, "\u8bed\u97f3\u8f6c\u53d1"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 237
    const v8, -0xe5e5e6

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 239
    const/16 v3, 0x11

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 240
    invoke-static {v0, v6}, Lcom/baicai/qqmod/Features;->dp(Landroid/content/Context;I)I

    move-result v3

    const/16 v8, 0x12

    invoke-static {v0, v8}, Lcom/baicai/qqmod/Features;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v0, v6}, Lcom/baicai/qqmod/Features;->dp(Landroid/content/Context;I)I

    move-result v6

    const/16 v9, 0xe

    invoke-static {v0, v9}, Lcom/baicai/qqmod/Features;->dp(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v7, v3, v8, v6, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 241
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    invoke-static {v0}, Lcom/baicai/qqmod/Features;->hLine(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    const-string v3, "\u8f6c\u53d1\u8bed\u97f3"

    invoke-static {v0, v3}, Lcom/baicai/qqmod/Features;->itemText(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 245
    new-instance v6, Lcom/baicai/qqmod/Features$$VoiceFwdL7;

    invoke-direct {v6, p0, p1, v1, v2}, Lcom/baicai/qqmod/Features$$VoiceFwdL7;-><init>(Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    invoke-static {v0}, Lcom/baicai/qqmod/Features;->hLine(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    const-string p0, "\u53d6\u6d88"

    invoke-static {v0, p0}, Lcom/baicai/qqmod/Features;->itemText(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p0

    .line 253
    const p1, -0x99999a

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    new-instance p1, Lcom/baicai/qqmod/Features$$VoiceFwdL8;

    invoke-direct {p1, v2}, Lcom/baicai/qqmod/Features$$VoiceFwdL8;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 258
    if-eqz v4, :cond_5

    .line 259
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 260
    const/16 p1, 0x12c

    invoke-static {v0, p1}, Lcom/baicai/qqmod/Features;->dp(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 261
    const/4 p1, -0x2

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 262
    invoke-virtual {v4, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 264
    :cond_5
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 265
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[VOICE-FWD] \u5df2\u5f39\u5706\u6da6\u8f6c\u53d1\u5bf9\u8bdd\u6846 (path="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[VOICE-FWD] dialog err: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 267
    :goto_0
    return-void
.end method

.method private static superChain(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    nop

    .line 342
    :goto_0
    if-eqz p0, :cond_0

    const-class v1, Ljava/lang/Object;

    if-eq p0, v1, :cond_0

    .line 343
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static tryInsertBelowAccount(Landroid/app/Activity;Landroid/view/ViewGroup;)Z
    .locals 7

    .line 557
    const-string v0, "\u8d26\u53f7\u4e0e\u5b89\u5168"

    invoke-static {p1, v0}, Lcom/baicai/qqmod/Features;->findViewByText(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 558
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 561
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 562
    nop

    .line 563
    :goto_0
    const-string v2, "RecyclerView"

    if-eqz v1, :cond_2

    .line 564
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 565
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 566
    check-cast v1, Landroid/view/ViewGroup;

    .line 567
    goto :goto_1

    .line 569
    :cond_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 563
    :cond_2
    const/4 v1, 0x0

    .line 571
    :goto_1
    const-string v3, ")"

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    .line 572
    move-object v5, p1

    .line 573
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eq v6, v1, :cond_4

    .line 574
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 575
    if-nez v6, :cond_3

    goto :goto_3

    .line 576
    :cond_3
    move-object v5, v6

    check-cast v5, Landroid/view/View;

    .line 577
    goto :goto_2

    .line 578
    :cond_4
    :goto_3
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 579
    if-ltz v5, :cond_5

    .line 580
    invoke-static {p0}, Lcom/baicai/qqmod/Features;->makeSettingsRow(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    add-int/lit8 p1, v5, 0x1

    invoke-virtual {v1, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 581
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "injectSettingsEntry: \u5df2\u63d2\u5728\u8d26\u53f7\u4e0e\u5b89\u5168\u4e0b\u9762 (RecyclerView idx="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 582
    return v4

    .line 587
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 588
    instance-of v5, v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_6

    instance-of v5, v1, Landroid/widget/ListView;

    if-nez v5, :cond_6

    .line 590
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 591
    check-cast v1, Landroid/view/ViewGroup;

    .line 592
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 593
    invoke-static {p0}, Lcom/baicai/qqmod/Features;->makeSettingsRow(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    add-int/2addr p1, v4

    invoke-virtual {v1, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 594
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "injectSettingsEntry: \u5df2\u63d2\u5728\u8d26\u53f7\u4e0e\u5b89\u5168\u4e0b\u9762 (parent="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 595
    return v4

    .line 597
    :cond_6
    return v0
.end method

.method private static voiceForward(Ljava/lang/ClassLoader;)V
    .locals 12

    .line 134
    const-string v0, "com.tencent.mobileqq.aio.msglist.holder.component.BaseContentComponent"

    .line 136
    :try_start_0
    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 142
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/util/List;

    if-ne v6, v7, :cond_0

    .line 143
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_0

    .line 144
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 145
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 148
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    const-string p0, "voiceForward: \u672a\u627e\u5230 BaseContentComponent \u7684\u62bd\u8c61\u83dc\u5355\u65b9\u6cd5(\u8fd4\u56deList\u65e0\u53c2abstract)"

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 150
    return-void

    .line 152
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voiceForward: \u57fa\u7c7b\u62bd\u8c61\u83dc\u5355\u65b9\u6cd5="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 153
    const-string v0, "com.tencent.mobileqq.aio.msglist.holder.component.ptt.AIOPttContentComponent"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 156
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    nop

    .line 158
    const/4 v4, 0x0

    move-object v5, v0

    .line 159
    :goto_2
    if-eqz v5, :cond_5

    if-nez v4, :cond_5

    .line 160
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_3
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 161
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    array-length v10, v10

    if-nez v10, :cond_3

    .line 162
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Ljava/util/List;

    if-ne v10, v11, :cond_3

    .line 163
    move-object v4, v9

    goto :goto_4

    .line 160
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 166
    :cond_4
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_2

    .line 168
    :cond_5
    if-nez v4, :cond_6

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "voiceForward: \u5728 AIOPttContentComponent \u4f53\u7cfb\u627e\u4e0d\u5230 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u7684\u5177\u4f53\u5b9e\u73b0\uff0c\u8df3\u8fc7"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 170
    goto :goto_1

    .line 172
    :cond_6
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 173
    nop

    .line 174
    new-instance v5, Lcom/baicai/qqmod/Features$2;

    invoke-direct {v5, v0, v4, p0}, Lcom/baicai/qqmod/Features$2;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/ClassLoader;)V

    invoke-static {v4, v5}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5df2\u6302\u94a9(\u4e3b) AIOPttContentComponent."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (\u5177\u4f53\u83dc\u5355\u91cd\u5199, after)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    goto/16 :goto_1

    .line 197
    :cond_7
    goto :goto_5

    .line 195
    :catchall_0
    move-exception p0

    .line 196
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "voiceForward: \u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 198
    :goto_5
    return-void
.end method

.method private static wireClick(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Runnable;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            ")Z"
        }
    .end annotation

    .line 844
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "kotlin.jvm.functions.Function0"

    const/4 v5, 0x1

    if-ge v3, v1, :cond_2

    aget-object v6, v0, v3

    .line 845
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 846
    array-length v8, v7

    if-ne v8, v5, :cond_1

    .line 847
    aget-object v7, v7, v2

    .line 848
    const-class v8, Ljava/lang/Runnable;

    if-eq v7, v8, :cond_0

    .line 849
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Landroid/view/View$OnClickListener;

    if-ne v7, v4, :cond_1

    .line 852
    :cond_0
    :try_start_0
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 853
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    return v5

    .line 855
    :catchall_0
    move-exception v4

    .line 844
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 860
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length v0, p0

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_5

    aget-object v3, p0, v1

    .line 861
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 862
    const-class v7, Ljava/lang/Runnable;

    if-eq v6, v7, :cond_3

    .line 863
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-class v7, Landroid/view/View$OnClickListener;

    if-ne v6, v7, :cond_4

    .line 866
    :cond_3
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 867
    invoke-virtual {v3, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 868
    return v5

    .line 869
    :catchall_1
    move-exception v3

    .line 860
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 873
    :cond_5
    return v2
.end method
