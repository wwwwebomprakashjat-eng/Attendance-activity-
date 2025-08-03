.class public Lcom/nic/nmms/modules/attendance/AttendanceActivity;
.super LX3/c;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic M0:I


# instance fields
.field public A0:Ljava/lang/String;

.field public B0:Ljava/lang/String;

.field public C0:D

.field public D0:D

.field public E0:Ljava/io/File;

.field public F0:Ljava/lang/String;

.field public G0:Landroid/graphics/Bitmap;

.field public H0:Ljava/lang/String;

.field public I0:Z

.field public J0:Z

.field public K0:I

.field public L0:I

.field public p0:Lc4/a;

.field public q0:Ld4/m;

.field public r0:Lr4/d;

.field public s0:Ljava/lang/String;

.field public t0:Ljava/lang/String;

.field public u0:Ljava/util/ArrayList;

.field public v0:Ljava/util/ArrayList;

.field public w0:Ljava/util/ArrayList;

.field public x0:Landroid/widget/ArrayAdapter;

.field public y0:Landroid/widget/ArrayAdapter;

.field public z0:Le4/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, LX3/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->K0:I

    iput v0, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->L0:I

    return-void
.end method

.method public static O(Lcom/nic/nmms/modules/attendance/AttendanceActivity;)Ljava/lang/Boolean;
    .registers 2

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "network"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final K()V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_e
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1f

    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-static {p0}, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->O(Lcom/nic/nmms/modules/attendance/AttendanceActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->R()V

    goto :goto_48

    :cond_33
    invoke-virtual {p0, p0}, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->T(Lcom/nic/nmms/modules/attendance/AttendanceActivity;)V

    goto :goto_48

    :cond_37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x3e6

    invoke-static {p0, v0, v1}, Le0/d;->i(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_48
    return-void
.end method

.method public final L(Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_ca

    goto :goto_36

    :sswitch_b
    const-string v3, "typeWorkCode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_36

    :cond_14
    const/4 v2, 0x3

    goto :goto_36

    :sswitch_16
    const-string v3, "typeReset"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_36

    :cond_1f
    const/4 v2, 0x2

    goto :goto_36

    :sswitch_21
    const-string v3, "typeMsrNo"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto :goto_36

    :cond_2a
    move v2, v0

    goto :goto_36

    :sswitch_2c
    const-string v3, "typeAttendance"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_36

    :cond_35
    move v2, v1

    :goto_36
    packed-switch v2, :pswitch_data_dc

    goto/16 :goto_c9

    :pswitch_3b  #0x3
    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->v0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->y0:Landroid/widget/ArrayAdapter;

    const v2, 0x7f12011d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->y0:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_5a

    :pswitch_52  #0x2
    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->x:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_c9

    :goto_5a
    :pswitch_5a  #0x1
    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->w0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->z0:Le4/b;

    invoke-virtual {p1}, LQ0/C;->d()V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->m:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :pswitch_74  #0x0
    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/manager/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/manager/k;->c(Lf/k;)Lcom/bumptech/glide/l;

    move-result-object p1

    const v2, 0x7f070078

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/bumptech/glide/j;

    iget-object v4, p1, Lcom/bumptech/glide/l;->e:Landroid/content/Context;

    const-class v5, Landroid/graphics/drawable/Drawable;

    iget-object v6, p1, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/b;

    invoke-direct {v3, v6, p1, v5, v4}, Lcom/bumptech/glide/j;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/l;Ljava/lang/Class;Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/j;->y(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    sget-object v2, Lu1/j;->b:Lu1/j;

    new-instance v3, LJ1/e;

    invoke-direct {v3}, LJ1/a;-><init>()V

    invoke-virtual {v3, v2}, LJ1/a;->d(Lu1/j;)LJ1/a;

    move-result-object v2

    check-cast v2, LJ1/e;

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/j;->t(LJ1/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    iget-object v2, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object v2, v2, Lc4/a;->q:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/j;->x(Landroid/widget/ImageView;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->G0:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->s0:Ljava/lang/String;

    const-string v2, "attendanceMorningEdit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c1

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->n:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_c1
    iput v1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->K0:I

    iput v1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->L0:I

    const-string p1, ""

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->F0:Ljava/lang/String;

    :goto_c9
    return-void

    :sswitch_data_ca
    .sparse-switch
        0x184a0dc3 -> :sswitch_2c
        0x1df6f353 -> :sswitch_21
        0x1e371235 -> :sswitch_16
        0x419f11f8 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_74  #00000000
        :pswitch_5a  #00000001
        :pswitch_52  #00000002
        :pswitch_3b  #00000003
    .end packed-switch
.end method

.method public final M()V
    .registers 16

    invoke-virtual {p0}, LX3/c;->J()V

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->z0:Le4/b;

    invoke-virtual {v0}, Le4/b;->h()Ljava/util/ArrayList;

    move-result-object v7

    iget-boolean v0, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->I0:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->F0:Ljava/lang/String;

    invoke-static {p0, v0}, Lu4/f;->l(Lcom/nic/nmms/modules/attendance/AttendanceActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    move-object v6, v0

    goto :goto_18

    :cond_15
    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->H0:Ljava/lang/String;

    goto :goto_13

    :goto_18
    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->q0:Ld4/m;

    iget-object v3, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->t0:Ljava/lang/String;

    iget-object v4, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->A0:Ljava/lang/String;

    iget-object v5, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->B0:Ljava/lang/String;

    iget-wide v8, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->C0:D

    iget-wide v10, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->D0:D

    iget-object v0, v0, Ld4/m;->d:Lj3/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/lifecycle/A;

    invoke-direct {v0}, Landroidx/lifecycle/y;-><init>()V

    new-instance v13, Ljava/lang/Thread;

    new-instance v14, Ld4/j;

    move-object v1, v14

    move-object v2, p0

    move-object v12, v0

    invoke-direct/range {v1 .. v12}, Ld4/j;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;DDLandroidx/lifecycle/A;)V

    invoke-direct {v13, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    new-instance v1, Ld4/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ld4/b;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/s;Landroidx/lifecycle/B;)V

    return-void
.end method

.method public final N(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object v0, v0, Lc4/a;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->s0:Ljava/lang/String;

    const-string v1, "attendanceMorning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->q0:Ld4/m;

    iget-object v0, v0, Ld4/m;->d:Lj3/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/lifecycle/A;

    invoke-direct {v0}, Landroidx/lifecycle/y;-><init>()V

    new-instance v7, Ljava/lang/Thread;

    new-instance v8, LH/j;

    const/4 v6, 0x3

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, LH/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    new-instance p1, Ld4/b;

    const/16 p2, 0x9

    invoke-direct {p1, p0, p2}, Ld4/b;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;I)V

    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/s;Landroidx/lifecycle/B;)V

    goto :goto_62

    :cond_3c
    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->r0:Lr4/d;

    iget-object v3, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->t0:Ljava/lang/String;

    iget-object v0, v0, Lr4/d;->d:Li4/i;

    invoke-static {v0}, Lc/e;->e(Li4/i;)Landroidx/lifecycle/A;

    move-result-object v0

    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Ld4/l;

    const/4 v7, 0x5

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Ld4/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/lifecycle/A;I)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    new-instance v1, LH/c;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, p2, v2}, LH/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/s;Landroidx/lifecycle/B;)V

    :goto_62
    return-void
.end method

.method public final P()V
    .registers 15

    invoke-virtual {p0}, LX3/c;->J()V

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->F0:Ljava/lang/String;

    invoke-static {p0, v0}, Lu4/f;->l(Lcom/nic/nmms/modules/attendance/AttendanceActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->q0:Ld4/m;

    iget-object v4, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->t0:Ljava/lang/String;

    iget-object v5, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->A0:Ljava/lang/String;

    iget-object v6, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->B0:Ljava/lang/String;

    iget-wide v7, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->C0:D

    iget-wide v9, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->D0:D

    iget-object v0, v0, Ld4/m;->d:Lj3/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/lifecycle/A;

    invoke-direct {v0}, Landroidx/lifecycle/y;-><init>()V

    new-instance v12, Ljava/lang/Thread;

    new-instance v13, Ld4/h;

    move-object v1, v13

    move-object v2, p0

    move-object v11, v0

    invoke-direct/range {v1 .. v11}, Ld4/h;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDLandroidx/lifecycle/A;)V

    invoke-direct {v12, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    new-instance v1, Ld4/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ld4/b;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/s;Landroidx/lifecycle/B;)V

    return-void
.end method

.method public final Q()V
    .registers 18

    move-object/from16 v14, p0

    invoke-virtual/range {p0 .. p0}, LX3/c;->J()V

    iget-object v0, v14, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->z0:Le4/b;

    invoke-virtual {v0}, Le4/b;->h()Ljava/util/ArrayList;

    move-result-object v8

    iget-object v0, v14, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->F0:Ljava/lang/String;

    invoke-static {v14, v0}, Lu4/f;->l(Lcom/nic/nmms/modules/attendance/AttendanceActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v14, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->q0:Ld4/m;

    iget-object v4, v14, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->t0:Ljava/lang/String;

    iget-object v2, v14, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->A0:Ljava/lang/String;

    iget-object v3, v14, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->B0:Ljava/lang/String;

    iget-wide v9, v14, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->C0:D

    iget-wide v11, v14, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->D0:D

    iget v6, v14, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->K0:I

    iget v7, v14, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->L0:I

    iget-object v0, v0, Ld4/m;->d:Lj3/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Landroidx/lifecycle/A;

    invoke-direct {v15}, Landroidx/lifecycle/y;-><init>()V

    new-instance v13, Ljava/lang/Thread;

    new-instance v1, Ld4/k;

    move-object v0, v1

    move-object v14, v1

    move-object/from16 v1, p0

    move-object/from16 v16, v13

    move-object v13, v15

    invoke-direct/range {v0 .. v13}, Ld4/k;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/ArrayList;DDLandroidx/lifecycle/A;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Ld4/b;

    const/4 v1, 0x5

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Ld4/b;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;I)V

    invoke-virtual {v15, v2, v0}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/s;Landroidx/lifecycle/B;)V

    return-void
.end method

.method public final R()V
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p0}, LX3/c;->J()V

    sget v1, LF2/a;->a:I

    new-instance v1, LA2/d;

    sget-object v6, Lh2/b;->a:Lh2/a;

    sget-object v7, Lh2/e;->c:Lh2/e;

    sget-object v5, LA2/d;->k:Landroidx/emoji2/text/m;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lh2/f;-><init>(Landroid/content/Context;Lcom/nic/nmms/modules/attendance/AttendanceActivity;Landroidx/emoji2/text/m;Lh2/b;Lh2/e;)V

    new-instance v2, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v2}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iget-wide v3, v2, Lcom/google/android/gms/location/LocationRequest;->f:J

    iget-wide v5, v2, Lcom/google/android/gms/location/LocationRequest;->e:J

    const-wide/16 v7, 0x6

    div-long v7, v5, v7

    cmp-long v3, v3, v7

    if-nez v3, :cond_29

    const-wide/16 v3, 0x14d

    iput-wide v3, v2, Lcom/google/android/gms/location/LocationRequest;->f:J

    :cond_29
    iget-wide v3, v2, Lcom/google/android/gms/location/LocationRequest;->w:J

    cmp-long v3, v3, v5

    const-wide/16 v4, 0x7d0

    if-nez v3, :cond_33

    iput-wide v4, v2, Lcom/google/android/gms/location/LocationRequest;->w:J

    :cond_33
    iput-wide v4, v2, Lcom/google/android/gms/location/LocationRequest;->e:J

    iput-wide v4, v2, Lcom/google/android/gms/location/LocationRequest;->f:J

    const/16 v3, 0x64

    invoke-static {v3}, LF2/d;->a(I)V

    iput v3, v2, Lcom/google/android/gms/location/LocationRequest;->b:I

    new-instance v3, Ld4/e;

    invoke-direct {v3, v0, p0}, Ld4/e;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-nez v4, :cond_52

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    const-string v5, "invalid null looper"

    invoke-static {v4, v5}, Lk2/t;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_52
    const-class v5, Ld4/e;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroidx/emoji2/text/f;

    invoke-direct {v6, v4, v3, v5}, Landroidx/emoji2/text/f;-><init>(Landroid/os/Looper;Ld4/e;Ljava/lang/String;)V

    new-instance v3, Lcom/bumptech/glide/manager/p;

    invoke-direct {v3, v1, v6}, Lcom/bumptech/glide/manager/p;-><init>(LA2/d;Landroidx/emoji2/text/f;)V

    new-instance v4, LA2/e;

    invoke-direct {v4, v3, v0, v2}, LA2/e;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v2, LH3/j;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v2, LH3/j;->a:Z

    iput-object v4, v2, LH3/j;->c:Ljava/lang/Object;

    iput-object v3, v2, LH3/j;->d:Ljava/lang/Object;

    iput-object v6, v2, LH3/j;->e:Ljava/lang/Object;

    const/16 v3, 0x984

    iput v3, v2, LH3/j;->b:I

    iget-object v3, v2, LH3/j;->d:Ljava/lang/Object;

    check-cast v3, Lcom/bumptech/glide/manager/p;

    if-eqz v3, :cond_81

    move v3, v5

    goto :goto_82

    :cond_81
    move v3, v0

    :goto_82
    const-string v4, "Must set unregister function"

    invoke-static {v4, v3}, Lk2/t;->a(Ljava/lang/String;Z)V

    iget-object v3, v2, LH3/j;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/emoji2/text/f;

    if-eqz v3, :cond_8e

    move v0, v5

    :cond_8e
    const-string v3, "Must set holder"

    invoke-static {v3, v0}, Lk2/t;->a(Ljava/lang/String;Z)V

    iget-object v0, v2, LH3/j;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/f;

    iget-object v0, v0, Landroidx/emoji2/text/f;->c:Ljava/lang/Object;

    check-cast v0, Li2/i;

    const-string v3, "Key must not be null"

    invoke-static {v0, v3}, Lk2/t;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/bumptech/glide/manager/p;

    iget-object v4, v2, LH3/j;->e:Ljava/lang/Object;

    check-cast v4, Landroidx/emoji2/text/f;

    iget-boolean v5, v2, LH3/j;->a:Z

    iget v6, v2, LH3/j;->b:I

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/bumptech/glide/manager/p;-><init>(LH3/j;Landroidx/emoji2/text/f;ZI)V

    new-instance v5, Ll1/d;

    invoke-direct {v5, v2, v0}, Ll1/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v4, Landroidx/emoji2/text/f;->c:Ljava/lang/Object;

    check-cast v0, Li2/i;

    const-string v2, "Listener has already been released."

    invoke-static {v0, v2}, Lk2/t;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lh2/f;->j:Li2/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LJ2/e;

    invoke-direct {v2}, LJ2/e;-><init>()V

    invoke-virtual {v0, v2, v6, v1}, Li2/e;->f(LJ2/e;ILh2/f;)V

    new-instance v4, Li2/C;

    new-instance v6, Li2/y;

    invoke-direct {v6, v3, v5}, Li2/y;-><init>(Lcom/bumptech/glide/manager/p;Ll1/d;)V

    invoke-direct {v4, v6, v2}, Li2/C;-><init>(Li2/y;LJ2/e;)V

    iget-object v2, v0, Li2/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v3, Li2/x;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v3, v4, v2, v1}, Li2/x;-><init>(Li2/E;ILh2/f;)V

    iget-object v0, v0, Li2/e;->n:LB2/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final S()V
    .registers 11

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->E0:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->F0:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x1

    :try_start_d
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v0, "Orientation"

    invoke-virtual {v1, v0, v9}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_27

    const/16 v1, 0x8

    if-eq v0, v1, :cond_24

    const/4 v0, 0x0

    goto :goto_2c

    :cond_24
    const/16 v0, 0x10e

    goto :goto_2c

    :cond_27
    const/16 v0, 0x5a

    goto :goto_2c

    :cond_2a
    const/16 v0, 0xb4

    :goto_2c
    if-eqz v0, :cond_4c

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    move-object v1, v8

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4c
    :goto_4c
    iput-object v8, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->G0:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/manager/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/k;->c(Lf/k;)Lcom/bumptech/glide/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->G0:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->n(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/j;

    move-result-object v0

    iget-object v1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object v1, v1, Lc4/a;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->x(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->s0:Ljava/lang/String;

    const-string v1, "attendanceMorningEdit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    iput-boolean v9, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->I0:Z

    :cond_6f
    return-void
.end method

.method public final T(Lcom/nic/nmms/modules/attendance/AttendanceActivity;)V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120067

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120075

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ld4/c;

    invoke-direct {v1, p0, p1}, Ld4/c;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;Lcom/nic/nmms/modules/attendance/AttendanceActivity;)V

    const p1, 0x7f120068

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public final U()Z
    .registers 5

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->z0:Le4/b;

    invoke-virtual {v0}, Le4/b;->i()I

    move-result v0

    iput v0, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->K0:I

    const/4 v0, 0x1

    return v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lf/k;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_7a

    const/4 p1, -0x1

    if-ne p2, p1, :cond_7a

    const-string p1, "head_count"

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->L0:I

    const-string p1, "image_path"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->E0:Ljava/io/File;

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->s0:Ljava/lang/String;

    const-string p2, "attendanceAfternoon"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->S()V

    goto :goto_89

    :cond_36
    invoke-virtual {p0}, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->U()Z

    move-result p1

    const-string p2, "The number of HEAD COUNT detected in the Group Photo : "

    if-eqz p1, :cond_58

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->L0:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".\nAnd the workers marked as PRESENT : "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->K0:I

    const-string v0, ".\nDo you want to Save ?"

    invoke-static {p3, p2, v0}, Lc/e;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Workers Count MATCHED"

    goto :goto_71

    :cond_58
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->L0:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".\nBut the workers marked as PRESENT : "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->K0:I

    const-string v0, ".\nTry once again"

    invoke-static {p3, p2, v0}, Lc/e;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Workers Count MISMATCHED"

    :goto_71
    new-instance v0, Ld4/d;

    invoke-direct {v0, p0, p1}, Ld4/d;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;Z)V

    invoke-virtual {p0, p3, p2, p1, v0}, LX3/c;->G(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    goto :goto_89

    :cond_7a
    const p1, 0x7f12010f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_89
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_a2

    goto/16 :goto_a0

    :pswitch_c  #0x7f09007f
    if-eqz p2, :cond_20

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->q:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->p:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->I0:Z

    goto/16 :goto_a0

    :cond_20
    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->q:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->p:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->I0:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->G0:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/manager/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/manager/k;->c(Lf/k;)Lcom/bumptech/glide/l;

    move-result-object p1

    const p2, 0x7f070078

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/bumptech/glide/j;

    iget-object v1, p1, Lcom/bumptech/glide/l;->e:Landroid/content/Context;

    const-class v2, Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/b;

    invoke-direct {v0, v3, p1, v2, v1}, Lcom/bumptech/glide/j;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/l;Ljava/lang/Class;Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/j;->y(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    sget-object p2, Lu1/j;->b:Lu1/j;

    new-instance v0, LJ1/e;

    invoke-direct {v0}, LJ1/a;-><init>()V

    invoke-virtual {v0, p2}, LJ1/a;->d(Lu1/j;)LJ1/a;

    move-result-object p2

    check-cast p2, LJ1/e;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/j;->t(LJ1/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    iget-object p2, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p2, p2, Lc4/a;->q:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/j;->x(Landroid/widget/ImageView;)V

    goto :goto_a0

    :pswitch_6e  #0x7f09007e
    if-eqz p2, :cond_86

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->B:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->q:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->l:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a0

    :cond_86
    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->B:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->q:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->l:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "typeAttendance"

    invoke-virtual {p0, p1}, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->L(Ljava/lang/String;)V

    :goto_a0
    return-void

    nop

    :pswitch_data_a2
    .packed-switch 0x7f09007e
        :pswitch_6e  #7f09007e
        :pswitch_c  #7f09007f
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    const-string v0, "attendanceMorningEdit"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v3, 0x7f09006f

    if-eq p1, v3, :cond_4d

    const v0, 0x7f090108

    if-eq p1, v0, :cond_14

    goto/16 :goto_15c

    :cond_14
    invoke-static {p0}, Lcom/karumi/dexter/Dexter;->withContext(Landroid/content/Context;)Lcom/karumi/dexter/DexterBuilder$Permission;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "android.permission.CAMERA"

    if-ge v0, v1, :cond_2d

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3b

    :cond_2d
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    filled-new-array {v2, v0, v1, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_3b
    invoke-interface {p1, v0}, Lcom/karumi/dexter/DexterBuilder$Permission;->withPermissions(Ljava/util/Collection;)Lcom/karumi/dexter/DexterBuilder$MultiPermissionListener;

    move-result-object p1

    new-instance v0, Ld4/f;

    invoke-direct {v0, p0}, Ld4/f;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;)V

    invoke-interface {p1, v0}, Lcom/karumi/dexter/DexterBuilder$MultiPermissionListener;->withListener(Lcom/karumi/dexter/listener/multi/MultiplePermissionsListener;)Lcom/karumi/dexter/DexterBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/karumi/dexter/DexterBuilder;->check()V

    goto/16 :goto_15c

    :cond_4d
    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->s0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v4, 0x7f12010d

    if-gez p1, :cond_73

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->n:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_84

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->G0:Landroid/graphics/Bitmap;

    if-nez p1, :cond_84

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->u:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LX3/c;->y(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)V

    goto/16 :goto_15c

    :cond_73
    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->G0:Landroid/graphics/Bitmap;

    if-nez p1, :cond_84

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->u:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LX3/c;->y(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)V

    goto/16 :goto_15c

    :cond_84
    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->s0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, ".\nBut the workers marked as PRESENT : "

    const-string v5, "The number of HEAD COUNT detected in the Group Photo : "

    const-string v6, "Workers Count MISMATCHED"

    const-string v7, " = %d"

    const v8, 0x7f12012a

    const-string v9, " = %d\n"

    const v10, 0x7f12012b

    const v11, 0x7f120057

    const/4 v12, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_15e

    :goto_a4
    move v1, v12

    goto :goto_c3

    :sswitch_a6
    const-string v0, "attendanceMorning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_af

    goto :goto_a4

    :cond_af
    const/4 v1, 0x2

    goto :goto_c3

    :sswitch_b1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b8

    goto :goto_a4

    :cond_b8
    move v1, v2

    goto :goto_c3

    :sswitch_ba
    const-string v0, "attendanceAfternoon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c3

    goto :goto_a4

    :cond_c3
    :goto_c3
    packed-switch v1, :pswitch_data_16c

    goto/16 :goto_15c

    :pswitch_c8  #0x2
    const/4 p1, 0x1

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->w0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->z0:Le4/b;

    invoke-virtual {v3}, Le4/b;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ld4/a;

    invoke-direct {v1, p0, v2}, Ld4/a;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;I)V

    invoke-virtual {p0, p1, v0, v2, v1}, LX3/c;->G(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    goto/16 :goto_15c

    :pswitch_110  #0x1
    const/4 p1, 0x1

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->w0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->z0:Le4/b;

    invoke-virtual {v3}, Le4/b;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ld4/a;

    const/16 v3, 0xf

    invoke-direct {v1, p0, v3}, Ld4/a;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;I)V

    invoke-virtual {p0, p1, v0, v2, v1}, LX3/c;->G(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    goto :goto_15c

    :pswitch_159  #0x0
    invoke-virtual {p0}, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->P()V

    :goto_15c
    return-void

    nop

    :sswitch_data_15e
    .sparse-switch
        -0x464325ad -> :sswitch_ba
        0x7102a145 -> :sswitch_b1
        0x79bb849b -> :sswitch_a6
    .end sparse-switch

    :pswitch_data_16c
    .packed-switch 0x0
        :pswitch_159  #00000000
        :pswitch_110  #00000001
        :pswitch_c8  #00000002
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v0, 0x1

    const-string v1, "attendanceAfternoon"

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lf/k;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    invoke-static {p0, p1}, Landroidx/databinding/c;->b(LX3/c;I)Landroidx/databinding/f;

    move-result-object p1

    check-cast p1, Lc4/a;

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    new-instance p1, LB/d;

    invoke-direct {p1, p0}, LB/d;-><init>(LX3/c;)V

    const-class v3, Ld4/m;

    invoke-virtual {p1, v3}, LB/d;->o(Ljava/lang/Class;)Landroidx/lifecycle/S;

    move-result-object p1

    check-cast p1, Ld4/m;

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->q0:Ld4/m;

    new-instance p1, LB/d;

    invoke-direct {p1, p0}, LB/d;-><init>(LX3/c;)V

    const-class v3, Lr4/d;

    invoke-virtual {p1, v3}, LB/d;->o(Ljava/lang/Class;)Landroidx/lifecycle/S;

    move-result-object p1

    check-cast p1, Lr4/d;

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->r0:Lr4/d;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "attendanceType"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_95

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->s0:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1f8

    goto :goto_70

    :sswitch_52
    const-string v4, "attendanceMorning"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5b

    goto :goto_70

    :cond_5b
    const/4 v3, 0x2

    goto :goto_70

    :sswitch_5d
    const-string v4, "attendanceMorningEdit"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_66

    goto :goto_70

    :cond_66
    move v3, v0

    goto :goto_70

    :sswitch_68
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    goto :goto_70

    :cond_6f
    move v3, v2

    :goto_70
    packed-switch v3, :pswitch_data_206

    goto :goto_95

    :pswitch_74  #0x1, 0x2
    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->t:Lc4/B;

    iget-object p1, p1, Lc4/B;->m:Landroidx/appcompat/widget/Toolbar;

    const v3, 0x7f1200f7

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_95

    :pswitch_85  #0x0
    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->t:Lc4/B;

    iget-object p1, p1, Lc4/B;->m:Landroidx/appcompat/widget/Toolbar;

    const v3, 0x7f12001f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_95
    :goto_95
    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->t:Lc4/B;

    iget-object p1, p1, Lc4/B;->m:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lf/k;->w(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lf/k;->n()LC2/W2;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, LC2/W2;->m(Z)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->s:Lc4/z;

    iget-object p1, p1, Lc4/z;->m:Landroid/widget/TextView;

    const-string v3, "Version 3.3.0"

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object v3, v3, Lc4/a;->y:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lu4/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->t0:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->u0:Ljava/util/ArrayList;

    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->u0:Ljava/util/ArrayList;

    const v4, 0x1090008

    invoke-direct {p1, p0, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->x0:Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-virtual {p1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->x:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->x0:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->v0:Ljava/util/ArrayList;

    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->v0:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->y0:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->w:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->y0:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->w0:Ljava/util/ArrayList;

    new-instance v3, Le4/b;

    const-string v4, "capture"

    invoke-direct {v3, p0, p1, v4}, Le4/b;-><init>(LX3/c;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->z0:Le4/b;

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->v:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LQ0/K;)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->v:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->z0:Le4/b;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LQ0/C;)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->s0:Ljava/lang/String;

    invoke-static {p1}, LX3/c;->E(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a0

    invoke-virtual {p0}, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->K()V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->u0:Ljava/util/ArrayList;

    const v0, 0x7f12011e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->s0:Ljava/lang/String;

    const-string v5, "attendanceMorning"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17b

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->q0:Ld4/m;

    iget-object p1, p1, Ld4/m;->d:Lj3/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/lifecycle/A;

    invoke-direct {p1}, Landroidx/lifecycle/y;-><init>()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ld4/i;

    invoke-direct {v1, p0, p1, v2}, Ld4/i;-><init>(Landroid/content/Context;Landroidx/lifecycle/A;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Ld4/b;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Ld4/b;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;I)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/s;Landroidx/lifecycle/B;)V

    goto :goto_1cc

    :cond_17b
    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->r0:Lr4/d;

    iget-object v6, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->t0:Ljava/lang/String;

    iget-object p1, p1, Lr4/d;->d:Li4/i;

    invoke-static {p1}, Lc/e;->e(Li4/i;)Landroidx/lifecycle/A;

    move-result-object p1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LH/j;

    const/4 v8, 0x7

    move-object v3, v1

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, LH/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Ld4/b;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Ld4/b;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;I)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/s;Landroidx/lifecycle/B;)V

    goto :goto_1cc

    :cond_1a0
    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->s0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b0

    const p1, 0x7f1200b7

    :goto_1ab
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1b4

    :cond_1b0
    const p1, 0x7f1200b5

    goto :goto_1ab

    :goto_1b4
    sget-object v0, Lu4/g;->j:Lu4/g;

    new-instance v1, Lf/b;

    const v2, 0x7f120070

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lf/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ld4/a;

    const/16 v2, 0x14

    invoke-direct {p1, p0, v2}, Ld4/a;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;I)V

    invoke-virtual {p0, v0, v1, p1}, LX3/c;->F(Lu4/g;Lf/b;Landroid/view/View$OnClickListener;)V

    :goto_1cc
    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->x:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->w:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->m:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->n:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->q:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->l:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :sswitch_data_1f8
    .sparse-switch
        -0x464325ad -> :sswitch_68
        0x7102a145 -> :sswitch_5d
        0x79bb849b -> :sswitch_52
    .end sparse-switch

    :pswitch_data_206
    .packed-switch 0x0
        :pswitch_85  #00000000
        :pswitch_74  #00000001
        :pswitch_74  #00000002
    .end packed-switch
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13

    const/4 p2, 0x2

    const-string p4, "attendanceAfternoon"

    const/4 p5, 0x6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_148

    goto/16 :goto_146

    :pswitch_e  #0x7f0901e9
    const-string p1, "typeWorkCode"

    invoke-virtual {p0, p1}, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->L(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->p0:Lc4/a;

    iget-object p1, p1, Lc4/a;->w:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    if-eqz p3, :cond_146

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->u0:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->A0:Ljava/lang/String;

    iget-object p2, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->q0:Ld4/m;

    iget-object p2, p2, Ld4/m;->d:Lj3/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroidx/lifecycle/A;

    invoke-direct {p2}, Landroidx/lifecycle/y;-><init>()V

    new-instance p3, Ljava/lang/Thread;

    new-instance p4, LH/d;

    invoke-direct {p4, p0, p1, p2, p5}, LH/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    new-instance p3, LH/h;

    const/4 p4, 0x5

    invoke-direct {p3, p0, p4, p1}, LH/h;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p2, p0, p3}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/s;Landroidx/lifecycle/B;)V

    goto/16 :goto_146

    :pswitch_4a  #0x7f0901e8
    const-string p1, "typeMsrNo"

    invoke-virtual {p0, p1}, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->L(Ljava/lang/String;)V

    if-eqz p3, :cond_146

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->v0:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->B0:Ljava/lang/String;

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->s0:Ljava/lang/String;

    invoke-static {p1}, LX3/c;->E(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11a

    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->s0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_150

    :goto_70
    move v0, p3

    goto :goto_8f

    :sswitch_72
    const-string p4, "attendanceMorning"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7b

    goto :goto_70

    :cond_7b
    move v0, p2

    goto :goto_8f

    :sswitch_7d
    const-string p4, "attendanceMorningEdit"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_86

    goto :goto_70

    :cond_86
    const/4 v0, 0x1

    goto :goto_8f

    :sswitch_88
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8f

    goto :goto_70

    :cond_8f
    :goto_8f
    packed-switch v0, :pswitch_data_15e

    goto/16 :goto_146

    :pswitch_94  #0x2
    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->q0:Ld4/m;

    iget-object v2, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->t0:Ljava/lang/String;

    iget-object v3, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->A0:Ljava/lang/String;

    iget-object v4, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->B0:Ljava/lang/String;

    iget-object p1, p1, Ld4/m;->d:Lj3/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/lifecycle/A;

    invoke-direct {p1}, Landroidx/lifecycle/y;-><init>()V

    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Ld4/g;

    const/4 v6, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ld4/g;-><init>(LX3/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/lifecycle/A;I)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance p2, Ld4/b;

    const/4 p3, 0x7

    invoke-direct {p2, p0, p3}, Ld4/b;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;I)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/s;Landroidx/lifecycle/B;)V

    goto/16 :goto_146

    :pswitch_c2  #0x1
    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->q0:Ld4/m;

    iget-object v2, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->t0:Ljava/lang/String;

    iget-object v3, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->A0:Ljava/lang/String;

    iget-object v4, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->B0:Ljava/lang/String;

    iget-object p1, p1, Ld4/m;->d:Lj3/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/lifecycle/A;

    invoke-direct {p1}, Landroidx/lifecycle/y;-><init>()V

    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Ld4/g;

    const/4 v6, 0x2

    move-object v0, p3

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ld4/g;-><init>(LX3/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/lifecycle/A;I)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance p2, Ld4/b;

    invoke-direct {p2, p0, p5}, Ld4/b;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;I)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/s;Landroidx/lifecycle/B;)V

    goto :goto_146

    :pswitch_ee  #0x0
    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->q0:Ld4/m;

    iget-object v2, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->t0:Ljava/lang/String;

    iget-object v3, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->A0:Ljava/lang/String;

    iget-object v4, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->B0:Ljava/lang/String;

    iget-object p1, p1, Ld4/m;->d:Lj3/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/lifecycle/A;

    invoke-direct {p1}, Landroidx/lifecycle/y;-><init>()V

    new-instance p3, Ljava/lang/Thread;

    new-instance p4, Ld4/g;

    const/4 v6, 0x1

    move-object v0, p4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ld4/g;-><init>(LX3/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/lifecycle/A;I)V

    invoke-direct {p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    new-instance p3, Ld4/b;

    invoke-direct {p3, p0, p2}, Ld4/b;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;I)V

    invoke-virtual {p1, p0, p3}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/s;Landroidx/lifecycle/B;)V

    goto :goto_146

    :cond_11a
    iget-object p1, p0, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->s0:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12a

    const p1, 0x7f1200b7

    :goto_125
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_12e

    :cond_12a
    const p1, 0x7f1200b5

    goto :goto_125

    :goto_12e
    sget-object p2, Lu4/g;->j:Lu4/g;

    new-instance p3, Lf/b;

    const p4, 0x7f120070

    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p1}, Lf/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ld4/a;

    const/16 p4, 0x13

    invoke-direct {p1, p0, p4}, Ld4/a;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;I)V

    invoke-virtual {p0, p2, p3, p1}, LX3/c;->F(Lu4/g;Lf/b;Landroid/view/View$OnClickListener;)V

    :cond_146
    :goto_146
    return-void

    nop

    :pswitch_data_148
    .packed-switch 0x7f0901e8
        :pswitch_4a  #7f0901e8
        :pswitch_e  #7f0901e9
    .end packed-switch

    :sswitch_data_150
    .sparse-switch
        -0x464325ad -> :sswitch_88
        0x7102a145 -> :sswitch_7d
        0x79bb849b -> :sswitch_72
    .end sparse-switch

    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_ee  #00000000
        :pswitch_c2  #00000001
        :pswitch_94  #00000002
    .end packed-switch
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Landroidx/activity/n;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lf/k;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x3e6

    if-ne p1, v0, :cond_6e

    const/4 p1, 0x0

    move v0, p1

    :goto_9
    array-length v1, p2

    if-ge v0, v1, :cond_1a

    aget v1, p3, v0

    if-eqz v1, :cond_17

    aget-object p2, p2, v0

    invoke-virtual {p0, p2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p2

    goto :goto_1e

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1a
    const/4 p2, 0x1

    move v2, p2

    move p2, p1

    move p1, v2

    :goto_1e
    sget-object p3, Lu4/g;->j:Lu4/g;

    const-string v0, ""

    if-nez p1, :cond_44

    if-nez p2, :cond_44

    new-instance p1, Lf/b;

    const p2, 0x7f12005d

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f120122

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lf/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Ld4/a;

    const/16 v0, 0x11

    invoke-direct {p2, p0, v0}, Ld4/a;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;I)V

    invoke-virtual {p0, p3, p1, p2}, LX3/c;->F(Lu4/g;Lf/b;Landroid/view/View$OnClickListener;)V

    goto :goto_6e

    :cond_44
    if-nez p1, :cond_5d

    new-instance p1, Lf/b;

    const p2, 0x7f12010a

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Lf/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ld4/a;

    const/16 v0, 0x12

    invoke-direct {p2, p0, v0}, Ld4/a;-><init>(Lcom/nic/nmms/modules/attendance/AttendanceActivity;I)V

    invoke-virtual {p0, p3, p1, p2}, LX3/c;->F(Lu4/g;Lf/b;Landroid/view/View$OnClickListener;)V

    goto :goto_6e

    :cond_5d
    invoke-static {p0}, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->O(Lcom/nic/nmms/modules/attendance/AttendanceActivity;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6b

    invoke-virtual {p0}, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->R()V

    goto :goto_6e

    :cond_6b
    invoke-virtual {p0, p0}, Lcom/nic/nmms/modules/attendance/AttendanceActivity;->T(Lcom/nic/nmms/modules/attendance/AttendanceActivity;)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public final onResume()V
    .registers 1

    invoke-super {p0}, Lf/k;->onResume()V

    invoke-virtual {p0}, LX3/c;->x()Z

    return-void
.end method
